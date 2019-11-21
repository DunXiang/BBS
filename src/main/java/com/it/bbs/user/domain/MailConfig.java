package com.it.bbs.user.domain;

import org.springframework.context.annotation.Bean;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Properties;

/**
 * 邮箱的基本配置信息
 * */
public class MailConfig {
    private static Properties emailConfig = null;

    static {
        try {
            FileReader fileReader = new FileReader("/email.properties");
            emailConfig = new Properties();
            emailConfig.load(fileReader);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Bean
    public static MailSender mailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost(emailConfig.getProperty("email.host"));//指定用来发送Email的邮件服务器主机名
        mailSender.setPort(Integer.parseInt(emailConfig.getProperty("email.port")));//默认端口，标准的SMTP端口
        mailSender.setUsername(emailConfig.getProperty("email.username"));//用户名
        mailSender.setPassword(emailConfig.getProperty("email.password"));//密码
        return mailSender;
    }

    public static Properties getEmailConfig() {
        return emailConfig;
    }

    public static void setEmailConfig(Properties emailConfig) {
        MailConfig.emailConfig = emailConfig;
        FileWriter fileWriter = null;
        try {
            fileWriter = new FileWriter("/email.properties");

            MailConfig.emailConfig.store(fileWriter,"");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
