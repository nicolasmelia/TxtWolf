import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_textNotesV1_dashboarddashboard_SendTxt_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/dashboard/dashboard_SendTxt.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'fcontent':("IE=edge")],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',11,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(3)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(4)
invokeTag('captureMeta','sitemesh',14,['gsp_sm_xmlClosingForEmptyTag':(""),'content':("width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"),'name':("viewport")],-1)
printHtmlPart(5)
invokeTag('resource','g',16,['dir':("css"),'file':("dashboard/bootstrap/css/bootstrap.min.css")],-1)
printHtmlPart(6)
invokeTag('resource','g',22,['dir':("css"),'file':("dashboard/AdminLTE.min.css")],-1)
printHtmlPart(7)
invokeTag('resource','g',23,['dir':("css"),'file':("dashboard/CustomCSS.css")],-1)
printHtmlPart(8)
invokeTag('resource','g',28,['dir':("css"),'file':("dashboard/skins/skin-purple.min.css")],-1)
printHtmlPart(7)
invokeTag('resource','g',29,['dir':("js"),'file':("dashboard/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css")],-1)
printHtmlPart(7)
invokeTag('resource','g',30,['dir':("js"),'file':("dashboard/plugins/select2/select2.min.css")],-1)
printHtmlPart(7)
invokeTag('resource','g',31,['dir':("js"),'file':("tagsinput/dist/bootstrap-tagsinput.css")],-1)
printHtmlPart(9)
})
invokeTag('captureHead','sitemesh',38,[:],1)
printHtmlPart(10)
createTagBody(1, {->
printHtmlPart(11)
expressionOut.print(createLink(controller: 'Dashboard', action: 'dashboard'))
printHtmlPart(12)
expressionOut.print(notiCount)
printHtmlPart(13)
if(true && (keywordsIn != 'NONE')) {
printHtmlPart(14)
for( _it416007106 in (keywordsIn) ) {
changeItVariable(_it416007106)
printHtmlPart(15)
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywordInbox'))
printHtmlPart(16)
expressionOut.print(it.keyword)
printHtmlPart(17)
expressionOut.print(it.phoneNumber)
printHtmlPart(18)
invokeTag('formatDate','g',72,['format':("MM-dd-yyyy"),'date':(it.date)],-1)
printHtmlPart(19)
}
printHtmlPart(20)
}
else {
printHtmlPart(21)
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywordInbox'))
printHtmlPart(22)
}
printHtmlPart(23)
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywordInbox'))
printHtmlPart(24)
expressionOut.print(createLink(controller: 'dashboard'))
printHtmlPart(25)
expressionOut.print(createLink(controller: 'tips'))
printHtmlPart(26)
expressionOut.print(createLink(controller: 'help'))
printHtmlPart(27)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(28)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(29)
expressionOut.print(session.firstName)
printHtmlPart(30)
expressionOut.print(session.lastName)
printHtmlPart(31)
invokeTag('formatDate','g',125,['format':("yyyy"),'date':(session.signUpDate)],-1)
printHtmlPart(32)
expressionOut.print(createLink(controller: 'login', action: 'accountSettings'))
printHtmlPart(33)
expressionOut.print(createLink(controller: 'login', action: 'logout'))
printHtmlPart(34)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(35)
expressionOut.print(session.firstName)
printHtmlPart(30)
expressionOut.print(session.lastName)
printHtmlPart(36)
createClosureForHtmlPart(37, 2)
invokeTag('form','g',166,['controller':("Dashboard"),'action':("contacts"),'enctype':("multipart/form-data"),'class':("sidebar-form")],2)
printHtmlPart(38)
expressionOut.print(createLink(controller: 'Dashboard', action: 'Dashboard'))
printHtmlPart(39)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newContact'))
printHtmlPart(40)
expressionOut.print(createLink(controller: 'Dashboard', action: 'createGroup'))
printHtmlPart(41)
expressionOut.print(createLink(controller: 'Dashboard', action: 'contacts'))
printHtmlPart(42)
expressionOut.print(createLink(controller: 'Dashboard', action: 'groups'))
printHtmlPart(43)
expressionOut.print(createLink(controller: 'Dashboard', action: 'sendTxt'))
printHtmlPart(44)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newDraft'))
printHtmlPart(45)
expressionOut.print(createLink(controller: 'Dashboard', action: 'drafts'))
printHtmlPart(46)
expressionOut.print(createLink(controller: 'Dashboard', action: 'secheduledTxt'))
printHtmlPart(47)
expressionOut.print(createLink(controller: 'Dashboard', action: 'tips'))
printHtmlPart(48)
expressionOut.print(createLink(controller: 'Dashboard', action: 'newKeyWord'))
printHtmlPart(49)
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywords'))
printHtmlPart(50)
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywordInbox'))
printHtmlPart(51)
expressionOut.print(createLink(controller: 'Dashboard', action: 'validateCoup'))
printHtmlPart(52)
expressionOut.print(createLink(controller: 'Dashboard', action: 'keywords', params: [type: 'contestSelect']))
printHtmlPart(53)
expressionOut.print(createLink(controller: 'Dashboard', action: 'balance'))
printHtmlPart(54)
expressionOut.print(createLink(controller: 'Dashboard', action: 'history'))
printHtmlPart(55)
expressionOut.print(createLink(controller: 'Dashboard', action: 'accountSettings'))
printHtmlPart(56)
expressionOut.print(createLink(controller: 'Dashboard', action: 'contacts'))
printHtmlPart(57)
expressionOut.print(createLink(controller: 'Dashboard', action: 'drafts'))
printHtmlPart(58)
expressionOut.print(createLink(controller: 'Dashboard', action: 'history', params:[activityType: 'messages']))
printHtmlPart(59)
createTagBody(2, {->
printHtmlPart(60)
expressionOut.print(preClientName)
printHtmlPart(61)
expressionOut.print(preClientID)
printHtmlPart(62)
if(true && (draft)) {
expressionOut.print(draft.title)
}
printHtmlPart(63)
if(true && (draft)) {
expressionOut.print(draft.message)
}
printHtmlPart(64)
})
invokeTag('form','g',337,['id':("txtForm"),'class':("form-signin"),'controller':("SmsGateOut"),'action':("messageOut"),'enctype':("multipart/form-data")],2)
printHtmlPart(65)
expressionOut.print(createLink(action: 'getRecipCount'))
printHtmlPart(66)
expressionOut.print(createLink(controller: 'Dashboard', action: 'dashboard'))
printHtmlPart(67)
expressionOut.print(bal.currentBalance)
printHtmlPart(68)
expressionOut.print(bal.currentBalance)
printHtmlPart(69)
expressionOut.print(bal.monthlyBalance)
printHtmlPart(70)
expressionOut.print(bal.currentBalance)
printHtmlPart(71)
expressionOut.print(bal.currentBalance)
printHtmlPart(72)
expressionOut.print(bal.monthlyBalance)
printHtmlPart(73)
if(true && (groups != 'NONE')) {
printHtmlPart(74)
for( _it1324878091 in (groups) ) {
changeItVariable(_it1324878091)
printHtmlPart(75)
if(true && (addToGroup)) {
printHtmlPart(76)
expressionOut.print(it.groupID)
printHtmlPart(77)
}
else {
printHtmlPart(78)
expressionOut.print(it.groupID)
printHtmlPart(79)
expressionOut.print(it.groupName)
printHtmlPart(80)
}
printHtmlPart(81)
expressionOut.print(it.groupName)
printHtmlPart(82)
expressionOut.print(it.memberCount)
printHtmlPart(83)
if(true && (it.description)) {
printHtmlPart(84)
expressionOut.print(it.description)
printHtmlPart(83)
}
else {
printHtmlPart(85)
}
printHtmlPart(86)
}
printHtmlPart(87)
}
else {
printHtmlPart(88)
expressionOut.print(createLink(controller: 'Dashboard', action: 'createGroup'))
printHtmlPart(89)
}
printHtmlPart(90)
expressionOut.print(createLink(controller: 'Dashboard', action: 'searchContactAjax'))
printHtmlPart(91)
})
invokeTag('captureBody','sitemesh',669,['class':("hold-transition skin-purple sidebar-mini")],1)
printHtmlPart(92)
invokeTag('javascript','g',672,['src':("dashboard/plugins/jQuery/jQuery-2.1.4.min.js")],-1)
printHtmlPart(93)
invokeTag('javascript','g',674,['src':("dashboard/bootstrap/js/bootstrap.min.js")],-1)
printHtmlPart(94)
invokeTag('javascript','g',676,['src':("dashboard/app.min.js")],-1)
printHtmlPart(95)
invokeTag('javascript','g',677,['src':("dashboard/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js")],-1)
printHtmlPart(95)
invokeTag('javascript','g',678,['src':("dashboard/plugins/select2/select2.full.min.js")],-1)
printHtmlPart(95)
invokeTag('javascript','g',679,['src':("tagsinput/dist/bootstrap-tagsinput.min.js")],-1)
printHtmlPart(95)
invokeTag('javascript','g',680,['src':("dataAccess.js")],-1)
printHtmlPart(96)
invokeTag('javascript','g',682,['src':("dashboard/plugins/input-mask/jquery.inputmask.js")],-1)
printHtmlPart(95)
invokeTag('javascript','g',683,['src':("dashboard/plugins/input-mask/jquery.inputmask.date.extensions.js")],-1)
printHtmlPart(95)
invokeTag('javascript','g',684,['src':("dashboard/plugins/input-mask/jquery.inputmask.extensions.js")],-1)
printHtmlPart(97)
invokeTag('javascript','g',687,['src':("dashboard/plugins/daterangepicker/daterangepicker.js")],-1)
printHtmlPart(98)
invokeTag('javascript','g',689,['src':("dashboard/plugins/colorpicker/bootstrap-colorpicker.min.js")],-1)
printHtmlPart(99)
invokeTag('javascript','g',691,['src':("dashboard/plugins/timepicker/bootstrap-timepicker.min.js")],-1)
printHtmlPart(100)
invokeTag('javascript','g',693,['src':("dashboard/plugins/iCheck/icheck.min.js")],-1)
printHtmlPart(101)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1478476079976L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
