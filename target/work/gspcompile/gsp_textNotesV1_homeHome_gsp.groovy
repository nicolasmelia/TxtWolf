import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_textNotesV1_homeHome_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/Home.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',4,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',4,[:],2)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':("/"),'charset':("utf-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("viewport"),'content':("width=device-width, initial-scale=1")],-1)
printHtmlPart(3)
invokeTag('javascript','g',7,['src':("ie/html5shiv.js")],-1)
printHtmlPart(4)
invokeTag('resource','g',8,['dir':("css"),'file':("mainBoot.css")],-1)
printHtmlPart(5)
invokeTag('resource','g',9,['dir':("css"),'file':("ie8.css")],-1)
printHtmlPart(6)
invokeTag('resource','g',10,['dir':("css"),'file':("ie9.css")],-1)
printHtmlPart(7)
})
invokeTag('captureHead','sitemesh',11,[:],1)
printHtmlPart(8)
createTagBody(1, {->
printHtmlPart(9)
expressionOut.print(createLink(controller: 'Login', action: 'login'))
printHtmlPart(10)
expressionOut.print(createLink(controller: 'Login', action: 'joinBeta'))
printHtmlPart(11)
invokeTag('javascript','g',115,['src':("jquery.min.js")],-1)
printHtmlPart(12)
invokeTag('javascript','g',116,['src':("jquery.scrollex.min.js")],-1)
printHtmlPart(13)
invokeTag('javascript','g',117,['src':("jquery.scrolly.min.js")],-1)
printHtmlPart(13)
invokeTag('javascript','g',118,['src':("skel.min.js")],-1)
printHtmlPart(13)
invokeTag('javascript','g',119,['src':("util.js")],-1)
printHtmlPart(14)
invokeTag('javascript','g',120,['src':("main.js")],-1)
printHtmlPart(15)
invokeTag('javascript','g',121,['src':("ie/respond.min.js")],-1)
printHtmlPart(16)
})
invokeTag('captureBody','sitemesh',122,['class':("landing")],1)
printHtmlPart(17)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1447391713038L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
