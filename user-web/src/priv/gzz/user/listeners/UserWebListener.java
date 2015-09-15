package priv.gzz.user.listeners;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class UserWebListener implements ServletContextListener {
	@Override
	public void contextInitialized(ServletContextEvent event) {
		System.out.println("userListenre init.");
		event.getServletContext().setInitParameter("rootDir", this.getClass().getResource("/").getPath());
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("userlistener destroy.");
	}
}