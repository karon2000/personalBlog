package blog.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

/**
 * ������ ��ť��Ƽ���� �α��� ���� �� ȣ��Ǵ� event handler
 * 
 * springBean ���� �������� <security:form-login�±׿� authentication-failure-handler-ref
 * �߰��ϸ� �α��� ���н� onAuthenticationFailure �޼ҵ尡 ���� ȣ��ȴ�.
 */

@Component("userAuthenticationFailureHandler")
public class UserAuthenticationFailureHandler implements AuthenticationFailureHandler {

	@Override
	public void onAuthenticationFailure(HttpServletRequest req, HttpServletResponse resp, AuthenticationException auth)
			throws IOException, ServletException {
		req.setAttribute("errorMessage", auth.getMessage());
		//resp.sendRedirect("loginForm");
		req.getRequestDispatcher("/WEB-INF/views/user/loginForm.jsp").forward(req, resp);
	}
}