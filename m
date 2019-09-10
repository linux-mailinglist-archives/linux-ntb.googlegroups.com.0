Return-Path: <linux-ntb+bncBCS4BDN7YUCRBS5K37VQKGQEOXWQWBQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id D3170AF000
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Sep 2019 18:54:36 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id z17sf2895343uaq.15
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Sep 2019 09:54:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568134475; cv=pass;
        d=google.com; s=arc-20160816;
        b=gks4VkaL+6Dnxhl0I2I2BgeaEXYP5eJZtM5O9fd/CXg8fhqd/3ajh8oggHoXXjHEc1
         blWgk8pIJ12h6KYJHHtA1zBQWETdW3MaiGF9F+ZpUW5CAvCqs4vIeta9Mpbo2XHQcfRC
         6+ujsUnZWbxVm55AOYUOyvv1IXbh1kFYzSlMpt/S2AAM1n8r6yzw3DbFw4c5RKMxnASl
         RkTl9S/aBSLxyBYLDk5afjmL1Rzvi9QzI6bRfLLIbLXfZY0kIBWRh71yCHF2WL31fGvZ
         ONVrhrLnfugdwurSZ3OcC/BFG3IkoD/T+HGy0ijeBjT+e45AjkIpkQ83sEIV9wYgYVwC
         dlyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=PRcpBXu9HP+Wi4Q87zY7pSVz5ZHxFPdM8Lx3XvP1t8g=;
        b=HYjDls6wTMJobsxfLgZkDRDM1+mVgl0dNVj7m5gi8O2AaIJJvCSqFI0atlezhRpole
         C++Sl4GT8XsGZb8J9VHaygj+uhjyfgY5pYW03cTjTg5v7vdQtnsb0e9ml+xLKmnrBZYt
         nPYUeNFTZPzaAXspwiY+Ku9+vWxwmkwzMYo7EkUtFN3ZcCdxVrANr95t84dhNy5ITQI2
         T4dNySbqsim/vLhC6K4mbRrAYhsKZSfiOyFhPgkbfSn+0rs2YDxtnhi3067DRKKW1aar
         mvOIv/L+YXbSULb/zisM2XoYw7gF15ygwMqALvbY3JvwqEg2XCcWhU5g84u7pvdrScRe
         XZiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="IpGT/nse";
       spf=neutral (google.com: 2607:f8b0:4864:20::d33 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PRcpBXu9HP+Wi4Q87zY7pSVz5ZHxFPdM8Lx3XvP1t8g=;
        b=eE+ZI59YeJoE0LEB0tQlA14wXVSjQ7MN1vorKP6SsSlqfO4c9N4s1USLfUTI9zAYnK
         xRCnOsNNjbk8cS7thz5ha2iuVnpCffND/WHVh19cIc715nF9tjZNDrq9VdXo8m+LcU1/
         fvufwYDrkwXfVB1DfrVvtONUI1172a/S8wszgOXCXQw0kXwi68ojN4JU5OzyYgDLiH0L
         7N62S/E97bZ0fj7RbOCHGPCavVR8S+htZvg4Zcf9OE8acnaLdO5H8Je1FMu/rHeXQ6X7
         rKQpp9ZKQldTWPaV7rVLX++WSasIrP/BeMk2UN2P4hd2S9LqrhD/U1keJ/TDTrwKQt0t
         WDIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PRcpBXu9HP+Wi4Q87zY7pSVz5ZHxFPdM8Lx3XvP1t8g=;
        b=MqpGC2uylQwOYI2kUnDTOt7Jf+N7yeLRZj58cUGqdWgM68gHJT+rOpSe75NP2QT9gK
         wYtH8M1YWPpwQjPScVJl++JNymlk7C+BONKzv6UjYEQy0y5NtEw/dLbX3lHlizKmoJu2
         BYQ/vISp6EoiRuUgHLdk7CzIXEN8M6m6U/ylYPZdeAZgxCx7JBmvz1f0pJ8ctMU6Di4P
         ZB3F7Ih8PTMd/M+0Hri49C2hXTy9GvaI4o0nmN8ZHDZjorPQk6VkodifdfaUfjjU9s2Q
         iFdpHTESTARAOGaSk6+UxFQodNdKpMTAj94LVFxjjHpEuCoNSkBycww5sqUQcUqAKl58
         UuGA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUOEDltxMjTmMjNC95k1u4cfgaAFo5BVZP0LumLVVywvm5FQ61b
	kQ7NMR+EWtt+8p4ITVjQZ70=
X-Google-Smtp-Source: APXvYqw9OeXd6wz6/h/74aQ8M6d9jBD8+9PN/w4gSx3YycxDYZ0T+9CI4OQu3c/cX9yiIp6/cgZa0w==
X-Received: by 2002:a67:1b01:: with SMTP id b1mr16366911vsb.127.1568134475659;
        Tue, 10 Sep 2019 09:54:35 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:7801:: with SMTP id x1ls937172uaq.2.gmail; Tue, 10 Sep
 2019 09:54:35 -0700 (PDT)
X-Received: by 2002:ab0:7405:: with SMTP id r5mr9726435uap.23.1568134475402;
        Tue, 10 Sep 2019 09:54:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568134475; cv=none;
        d=google.com; s=arc-20160816;
        b=BgU4o9V2EwQPmCiYvY6RntMvO1bCin1E2hOlTXSkPuQ5w2lU/aLG4X4clqhtOuKxOr
         HYoo+a8Ztqk6AtyWBAYKtuyt+NQeTlcupipxdybdQVTEUxGG9rpId+hCjYugdFNv9HvX
         bAWMy/qwdNgRLP+Zm9p+BDqqeviZXPo4/KgUb2Z3aomWXx6sUtnK+hGlTkGA6eAiwMd1
         XEkKpH3KuMfbC474/1Utagv6qO0qJwatDzUZziZl7uENGc08R2X1Dd96pfvYU6F9zj7p
         av8HgmUw1/D8MCR4YhX4ycyCwDr3oPvhl63m2pz5LDgTynW0yArSVD5WiKivEHrjlXlL
         bPbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ExkEWMNN9hnJ+xrI3sPVaQ1nWieBGLn+aIHNgBd5IHY=;
        b=GR3efkGrC0WK/QIaSUKbj+XNCRt+TRp3EKfiF/sijWZpybZP+FexLQ2859FJk5jK4W
         JKOunx333VDabSRWJej5cKHvnrknZwlK6TiFxz/RvFZKsg3fr357by74+yQs08FITJAX
         a96Y/DayxVn0T+SJKfbFIA9gUY5vp0f/q4TBsgVdNw1VAqMOGUmyrqAb4uAx8DT0HiPZ
         CVIfoD1DdKAWFuQ34TBy4GP2eNp8mB6RlfHuVk9dhE2cgVokeY9sleGGEWstFZHcbcW2
         XgibOFDWIlBJNv+vpa7F/y0mnxGhawdo4/yDGlojuWF7nj7u6cPFmlQItAeQ6d4epsX1
         pb5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="IpGT/nse";
       spf=neutral (google.com: 2607:f8b0:4864:20::d33 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id 136si1173658vkx.4.2019.09.10.09.54.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 09:54:35 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::d33 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::d33;
Received: by mail-io1-xd33.google.com with SMTP id b136so39150667iof.3
        for <linux-ntb@googlegroups.com>; Tue, 10 Sep 2019 09:54:35 -0700 (PDT)
X-Received: by 2002:a02:394b:: with SMTP id w11mr25657051jae.101.1568134474794;
 Tue, 10 Sep 2019 09:54:34 -0700 (PDT)
MIME-Version: 1.0
From: Jon Mason <jdmason@kudzu.us>
Date: Tue, 10 Sep 2019 17:54:27 +0100
Message-ID: <CAPoiz9wvWjFNbSn-n+YHyp0Cg4Vvdc4vdNLSMUEGHxm698h-zA@mail.gmail.com>
Subject: NTB update
To: linux-ntb <linux-ntb@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b="IpGT/nse";       spf=neutral (google.com: 2607:f8b0:4864:20::d33 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

FYI, there was a good talk on some work TI is doing for NTB at Linux
Plumbers conference.  Information and slides can be found at
https://linuxplumbersconf.org/event/4/contributions/395/
He told me that patches should be coming in the next few weeks.

As of right now, all outstanding patches are in the ntb-next tree.  If
you have any patches that you are waiting to be pulled in, please
repush.

Thanks,
Jon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9wvWjFNbSn-n%2BYHyp0Cg4Vvdc4vdNLSMUEGHxm698h-zA%40mail.gmail.com.
