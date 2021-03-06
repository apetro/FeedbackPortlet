<%@ page session="false" %>
<jsp:directive.include file="/WEB-INF/jsp/include-portlet.jsp"/>

<div class='feedback-portlet'>
  <div class='container-fluid'>
    <div class="row">
      <div class="col-xs-12 col-sm-6 general-feedback">
        <h2 tabindex="0" aria-label="Give feedback">Give feedback</h2>
        <form method="post" action="<portlet:actionURL/>" onsubmit="browserInfo(this)">
            <spring:bind path="command.name">
            <input type="hidden" name="<c:out value="${status.expression}"/>" value="<c:out value="${status.value}"/>" />
            </spring:bind>
            <spring:bind path="command.netid">
            <input type="hidden" name="<c:out value="${status.expression}"/>" value="<c:out value="${status.value}"/>" />
            </spring:bind>
            <spring:bind path="command.phoneNumber">
            <input type="hidden" name="<c:out value="${status.expression}"/>" value="<c:out value="${status.value}"/>" />
            </spring:bind>
            <spring:bind path="command.emailAddress">
            <input type="hidden" name="<c:out value="${status.expression}"/>" value="<c:out value="${status.value}"/>" />
            </spring:bind>
            <p>
            <spring:bind path="command.subject">
            <input type="hidden" name="<c:out value="${status.expression}"/>" value="UW Feedback" />
            </spring:bind>
            <spring:bind path="command.details">
            <c:out value="${status.errorMessage}"/></font>
            <textarea aria-label="Give feedback text edited box" wrap="physical" rows="8" style='width: 100%;' class='form-control' name="<c:out value="${status.expression}" />"><c:out value="${status.value}"/></textarea>
            </spring:bind>
            </p>

            <spring:bind path="command.userAgent">
            <input type="hidden" name="<c:out value="${status.expression}"/>" />
            </spring:bind>
            <spring:bind path="command.browserName">
            <input type="hidden" name="<c:out value="${status.expression}"/>" />
            </spring:bind>
            <spring:bind path="command.browserVersion">
            <input type="hidden" name="<c:out value="${status.expression}"/>" />
            </spring:bind>
            <spring:bind path="command.platform">
            <input type="hidden" name="<c:out value="${status.expression}"/>" />
            </spring:bind>

            <p>
                Your name will be submitted with your feedback.
            </p>
            <p>
            <input aria-label="send button" type="submit" value="Send" class='btn btn-primary btn-share-ideas' />
            </p>
        </form>
      </div>
      <div class="col-xs-12 col-sm-6 general-help">
        <h2 tabindex="0" aria-label="Get help">Get help</h2>
          <a href='/portal/p/campus-chat-connections'><i class="fa fa-comments-o"></i>Live chat</a>
          <a href='http://helpdesk.doit.wisc.edu/page.php?id=1' target='_blank'><i class="fa fa-phone"></i>Call Us</a>
          <a href='https://kb.wisc.edu/myuw/' target='_blank'><i class="fa fa-question"></i>How-to Info</a>
      </div>
    </div>
    <div class="my-voice-container">
        <span> <img src="<%=renderRequest.getContextPath()%>/img/myuw-myvoice-logo.png"/></span>
        <span> MyUW MyVoice closed on March 30.  We received hundreds of ideas and are using them to enhance the site.  Thanks to everyone who contributed, and we hope you'll keep giving your feedback on MyUW!</span>
    </div>
  </div>
</div>
