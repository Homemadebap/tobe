package kr.co.tobe.util;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StringToDateTypeHandler extends BaseTypeHandler<Date> {

    private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

    @Override
    public void setNonNullParameter(PreparedStatement ps, int i, Date parameter, JdbcType jdbcType) throws SQLException {
        // Date를 문자열로 변환하여 설정
        ps.setString(i, sdf.format(parameter));
    }

    @Override
    public Date getNullableResult(ResultSet rs, String columnName) throws SQLException {
        // 문자열을 Date로 변환하여 반환
        String dateString = rs.getString(columnName);
        return parseDate(dateString);
    }

    @Override
    public Date getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
        // 문자열을 Date로 변환하여 반환
        String dateString = rs.getString(columnIndex);
        return parseDate(dateString);
    }

    @Override
    public Date getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
        // 문자열을 Date로 변환하여 반환
        String dateString = cs.getString(columnIndex);
        return parseDate(dateString);
    }

    private Date parseDate(String dateString) {
        try {
            return (dateString != null) ? sdf.parse(dateString) : null;
        } catch (ParseException e) {
            e.printStackTrace();
            return null; // 날짜 변환 실패
        }
    }
}
