package kr.co.groupworks.mail.service;

import kr.co.groupworks.mail.dto.MailDTO;
import kr.co.groupworks.mail.entity.Mail;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface MailService {
    void saveOne(MailDTO mail, List<MultipartFile> files);

    Page<Mail> getEmailListByReceiverEmail(String receiverEmail, Pageable pageNumber);

    Page<Mail> getEmailListBySenderEmail(String senderEmail, Pageable pageable);

    Page<Mail> getImportantEmailListByReceiverEmail(String receiverEmail, Pageable pageable);

    boolean updateMailStatus(String id, Integer mailStatus);

    Page<Mail> getTrashEmailListTrashByReceiverEmail(String receiverEmail, Pageable pageable);

    MailDTO getEmailById(String id);

    Page<Mail> getEmailListByReceiverEmailAndMailTitle(String receiverEmail, String mailTitle, Pageable pageNumber);

    Page<Mail> getEmailListByReceiverEmailAndMailSenderName(String receiverEmail, String mailSenderName, Pageable pageNumber);

    Page<Mail> getEmailListBySenderEmailAndMailTitle(String senderEmail, String mailTitle, Pageable pageable);

    Page<Mail> getEmailListBySenderEmailAndMailReceiverName(String senderEmail, String mailRecieverName, Pageable pageable);

    void deleteMailById(List<String> deleteMailList);

    void restoreMailById(List<String> restoreMailList);

    List<Mail> latestMails(String email);
}
