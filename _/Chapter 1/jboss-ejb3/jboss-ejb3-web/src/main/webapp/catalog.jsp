<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="org.jboss.ejb3.model.*,java.util.*,javax.naming.*"%>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252" />
<title>EJB3 Client</title>
</head>
<body>
	<%
        //Hashtable jndiProperties = new Hashtable();
       // jndiProperties.put(Context.URL_PKG_PREFIXES,"org.jboss.ejb.client.naming");
        Context context = new InitialContext();
        
CatalogSessionBeanFacade bean = (CatalogSessionBeanFacade) context
                .lookup("java:app/jboss-ejb3-ejb/CatalogSessionBeanFacade!org.jboss.ejb3.model.CatalogSessionBeanFacade");
        bean.createTestData();
        List<Catalog> catalogs = bean.getAllCatalogs();
        out.println("<br/>" + "List of Catalogs" + "<br/>");
        for (Catalog catalog : catalogs) {
            out.println("Catalog Id:");
            out.println(catalog.getId() + "<br/>");
            out.println("Catalog Journal:");
            out.println(catalog.getJournal() + "<br/>");
        }

        out.println("<br/>" + "List of Editions" + "<br/>");
        List<Edition> editions = bean.getAllEditions();
        for (Edition edition : editions) {
            out.println("Edition Id:");
            out.println(edition.getId() + "<br/>");
            out.println("Edition Date:");
            out.println(edition.getEdition() + "<br/>");

        }
        out.println("<br/>" + "List of Sections" + "<br/>");
        List<Section> sections = bean.getAllSections();
        for (Section section : sections) {
            out.println("Section Id:");
            out.println(section.getId() + "<br/>");
            out.println("Section Name:");
            out.println(section.getSectionname() + "<br/>");

        }

        out.println("<br/>" + "List of Articles" + "<br/>");
        List<Article> articles = bean.getAllArticles();
        for (Article article : articles) {
            out.println("Article Id:");
            out.println(article.getId() + "<br/>");
            out.println("Article Title:");
            out.println(article.getTitle() + "<br/>");

        }
        out.println("<br/>"+"Delete some Data" + "<br/>");
        bean.deleteSomeData();
        catalogs = bean.getAllCatalogs();
        out.println("<br/>" + "List of Catalogs" + "<br/>");
        for (Catalog catalog : catalogs) {
            out.println("Catalog Id:");
            out.println(catalog.getId() + "<br/>");
            out.println("Catalog Journal:");
            out.println(catalog.getJournal() + "<br/>");
        }
        out.println("<br/>" + "List of Editions" + "<br/>");
        editions = bean.getAllEditions();
        for (Edition edition : editions) {
            out.println("Edition Id:");
            out.println(edition.getId() + "<br/>");
            out.println("Edition Date:");
            out.println(edition.getEdition() + "<br/>");
        }
        out.println("<br/>" + "List of Sections" + "<br/>");
        sections = bean.getAllSections();
        for (Section section : sections) {
            out.println("Section Id:");
            out.println(section.getId() + "<br/>");
            out.println("Section Name:");
            out.println(section.getSectionname() + "<br/>");

        }
        out.println("<br/>" + "List of Articles" + "<br/>");
        articles = bean.getAllArticles();
        for (Article article : articles) {
            out.println("Article Id:");
            out.println(article.getId() + "<br/>");
            out.println("Article Title:");
            out.println(article.getTitle() + "<br/>");
        }
    %>
</body>
</html>