//    Document   : TKMTMemberAdminController
//    Created on : 12-April-2019
//    Author     : Majid Tooranisama
//    Observer   : Taraneh Khaleghi
package club.admin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import club.business.Member;
import club.data.MemberDB;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
/**
 *
 * @author majid
 */
@WebServlet(name = "TKMTMemberAdminController", urlPatterns = {"/TKMTMemberAdmin"})
public class TKMTMemberAdminController extends HttpServlet {
 //doGet method
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "/TKMTDisplayMembers.jsp";
        if (action == null) {
            action = "displayMembers";  // default action
        }
        
        if (action.equals("displayMembers"))
        {
            ArrayList<Member> members = MemberDB.selectMembers();        
            request.setAttribute("members", members);
        }
        else if (action.equals("addMember"))
        {
            url = "/TKMTAddMember.jsp";
        }
        else if (action.equals("editMember"))
        {
            String emailAddr = request.getParameter("email");
            Member member = MemberDB.selectMember(emailAddr);
            request.setAttribute("member", member);
            url = "/TKMTEditMember.jsp";
        }
        else if (action.equals("removeMember"))
        {
            String emailAddr = request.getParameter("email");
            Member member = MemberDB.selectMember(emailAddr);
            request.setAttribute("member", member);
            url = "/TKMTRemoveMember.jsp";
        }
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);     
    }
    //doPost method
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           
        String action = request.getParameter("action");
        String url = "/TKMTDisplayMembers.jsp";
        if (action == null)
        {
            action = "displayMembers";
        }
        
        if (action.equals("saveMember"))
        {
            url = saveMember(request, response);
        }
        else if (action.equals("deleteMember"))
        {
            String email = request.getParameter("email");
            Member member = MemberDB.selectMember(email);
            MemberDB.delete(member);
            ArrayList<Member> members = MemberDB.selectMembers();        
            request.setAttribute("members", members);
        }
        else if (action.equals("cancel"))
        {
            ArrayList<Member> members = MemberDB.selectMembers();        
            request.setAttribute("members", members);
        }
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    
    private String saveMember(HttpServletRequest request, HttpServletResponse response)
    {
       
        String url = "/TKMTDisplayMembers.jsp";
        String emailAddr = request.getParameter("email");    
        String fullName = request.getParameter("fullName");
        String phone = request.getParameter("phone");
        String program = request.getParameter("program");
        String year = request.getParameter("year");
        String dbOperation = request.getParameter("db_operation");
        
        //HttpSession session = request.getSession();
        //Member member = (Member) session.getAttribute("member"); 
        Member member = new Member(fullName, emailAddr);
        if (dbOperation == null)
        {
            dbOperation = "";
        }
        String errorMsg = "";
        if (!member.isValid())
        {
            if (dbOperation.equals("update"))
            {
                errorMsg = "Cannot update record. Please provide a valid name.";                 
                member.setPhoneNumber(phone);
                member.setProgramName(program);
                member.setYearLevel(Integer.parseInt(year));
                request.setAttribute("member", member);
                url = "/TKMTEditMember.jsp";
            }
            else 
            {
                errorMsg = "Cannot insert a new record. Please provide a valid name and/or email.";
                url = "/TKMTAddMember.jsp";
            }

            request.setAttribute("errorMsg", errorMsg);
        }
        else
        {
            member.setPhoneNumber(phone);
            member.setProgramName(program);
            member.setYearLevel(Integer.parseInt(year));
        
            if (dbOperation.equals("update") || MemberDB.emailExists(emailAddr))
            {
                MemberDB.update(member);
            }
            else
            {
                MemberDB.insert(member);
            }

            ArrayList<Member> members = MemberDB.selectMembers();        
            request.setAttribute("members", members);
        }
        return url;
    }
}

    


