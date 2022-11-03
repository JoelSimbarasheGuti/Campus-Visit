<%@ page import = "java.sql.*"%>
<%
    String name = request.getParameter("name");
    String name = request.getParameter("address");
    String name = request.getParameter("email");
    String name = request.getParameter("gender");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","");
        PreparedStatement ps = conn.prepareStatement("insert into feedback(name, address, email, gender) values(?, ?, ?, ?)");
        ps.setString(1, name);
        ps.setString(2, address);
        ps.setString(3, email);
        ps.setString(4, gender);

        int x = ps.executeUpdate();

        if(x>0){
            out.println("Successful...");
        }else{
            out.println("Failed...");
        }

    }catch(Exception e){
        out.println(e);
    }
%>