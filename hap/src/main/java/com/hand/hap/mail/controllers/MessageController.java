/*
 * #{copyright}#
 */

package com.hand.hap.mail.controllers;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hand.hap.core.IRequest;
import com.hand.hap.mail.PriorityLevelEnum;
import com.hand.hap.mail.ReceiverTypeEnum;
import com.hand.hap.mail.dto.Message;
import com.hand.hap.mail.dto.MessageReceiver;
import com.hand.hap.mail.service.IMessageService;
import com.hand.hap.system.controllers.BaseController;
import com.hand.hap.system.dto.ResponseData;

/**
 * 对消息的操作.
 * 
 * @author xiawang.liu@hand-china.com
 */

@Controller
public class MessageController extends BaseController {

    @Autowired
    private IMessageService messageService;

    /**
     * 查询消息.
     * 
     * @param request
     *            HttpServletRequest
     * @param message
     *            Message
     * @param page
     *            page
     * @param pagesize
     *            pagesize
     * @return ResponseData
     */
    @RequestMapping(value = "/sys/message/query")
    @ResponseBody
    public ResponseData getMessageBySubject(HttpServletRequest request, Message message,
            @RequestParam(defaultValue = DEFAULT_PAGE) int page,
            @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pagesize) {
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(messageService.selectMessagesBySubject(requestContext, message, page, pagesize));
    }

    /**
     * 查询消息地址.
     * 
     * @param request
     *            HttpServletRequest
     * @param messageReceiver
     *            MessageReceiver
     * @param page
     *            page
     * @param pagesize
     *            pagesize
     * @return ResponseData
     */
    @RequestMapping(value = "/sys/message/queryMessageAddresses")
    @ResponseBody
    public ResponseData getMessageAddressesByMessageId(HttpServletRequest request, MessageReceiver messageReceiver,
            @RequestParam(defaultValue = DEFAULT_PAGE) int page,
            @RequestParam(defaultValue = DEFAULT_PAGE_SIZE) int pagesize) {
        IRequest requestContext = createRequestContext(request);
        return new ResponseData(
                messageService.selectMessageAddressesByMessageId(requestContext, messageReceiver, page, pagesize));
    }

    @RequestMapping(value = "/sys/message/sendTest")
    @ResponseBody
    public ResponseData sendTestMessage(HttpServletRequest request, @RequestBody Map<String, String> param) throws
            Exception {
        IRequest iRequest = createRequestContext(request);
        String str = param.get("receivers");
        String [] receivers =StringUtils.split(str, ";");
        ArrayList<MessageReceiver> receiverList = new ArrayList<>();
        for(String r:receivers) {
            MessageReceiver mr = new MessageReceiver();
            mr.setMessageAddress(r);
            mr.setMessageType(ReceiverTypeEnum.NORMAL.getCode());
            receiverList.add(mr);
        }
        messageService.addEmailMessage(iRequest.getUserId(), param.get("accountCode"),
                param.get("subject"), param.get("content"), PriorityLevelEnum.NORMAL,null,receiverList);
        return new ResponseData();
    }
}