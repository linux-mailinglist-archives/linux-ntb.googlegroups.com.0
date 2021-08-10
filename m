Return-Path: <linux-ntb+bncBCY5NL7ISQIRBUX2ZGEAMGQEC77V6CY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2780D3E5B0F
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Aug 2021 15:21:24 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id i15-20020a92540f0000b0290222feb23cf5sf3916199ilb.0
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Aug 2021 06:21:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628601682; cv=pass;
        d=google.com; s=arc-20160816;
        b=TU6wwhGSp55KV7P64B8iZ0aWl43nUw3WhLLGYnmY+lJ9N6jRqqO699veBV9Tynwmwq
         YnQ3rpkpT5/ytReOueByXzaDyuv1zHiQgPodptjnrkaO9FkPTcTX8y8tW2OBBezlVMR4
         loZXEOaIDfowSBUJavQCKi1U67G+4nAxnd/7fiQoxOzTbQR52vkRNkXkdlIe0leWizsA
         aYgPXmYUuE9k6npGICMSG/flcd0dpHu8VIJiNq12m7/1casX4Go9ECupILlTKHxxPdVQ
         +Y1R28z/3o9YjXsxGWmbZ+Lf0o8sNw7WmNsLjJjXBzZ1BsoQKu2yvMRInQ9i+WLMMxxA
         qPbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :sender:mime-version:dkim-signature;
        bh=Yd4qdmt6czgjSeYbfX5C3RzEWjTo4aAfwuMmS/oBY/M=;
        b=b+GENaiLiySyB2qtVCkZQUFzdo+NibRom7RJ9c2AIrc+GzKSvx3zgcCStKeNngU9J9
         Fkkx+AE6yEG1nd/t41FA7ZqlMByjtlGuh2tb7pRTWs8mjlkwpMWWcCu7FP7axpnVlfMc
         6YdEpiupTgIk5hppd/gC9dR0bsm30niF3ZTJuNgL8Fi05d8MX6/bXUJYMIYMuMjj14RC
         o4+lwtYhT2l2dGvbjmfvy517rxLG2sJZn+nmfcdNAw+/hxEnxphNPnOIhYKu1aaeGW0S
         PmYMcRtbCHGHHX17APcWzfWHFqEWyfd0d10xw1dDfVnAbcXe1jwccC92/WSVow2ThkU2
         k4tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="N/TxPAPc";
       spf=pass (google.com: domain of immeublesourou@gmail.com designates 2607:f8b0:4864:20::e29 as permitted sender) smtp.mailfrom=immeublesourou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yd4qdmt6czgjSeYbfX5C3RzEWjTo4aAfwuMmS/oBY/M=;
        b=qegoO4FRX7RpR3YvKTGgAv7JQud0uWhE0Z34WDjhyWBRw62QB6qAwSKHli/0jmmfRr
         zEdDGxQD1TjdFnRJbDvubA/NfOvZc2Qxjvj4QNRgQpzx0Xo6TApCw2zS6N+4b6KSpHXo
         xsglDyveI+qDGx9P4oZSA+cHGrH/RUcHq5rupAQ9mIV9ww31HDIZDov6YMpSl3Lbn3zJ
         14Cm4vAdFrYGFyLdJIfWt8lxpZMeDx06lrCtVp95vURMjLMZgrphMhSeFj3WWw6uL1gP
         P+UL/qL0u8EfDhlJuNmgRZRNpH8m25beAFQAp6rM9LWywh0ED2x7WZ3c8QaPYTz3av+q
         i3sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Yd4qdmt6czgjSeYbfX5C3RzEWjTo4aAfwuMmS/oBY/M=;
        b=oQLRQNA0PKUPVQmMYFW171nlmIWeALohwon+5Gs00dL9Bo7R/2hTvcjkOZUTBERvCm
         8l0rvBox5NYbNb9132GRGwpu2TgfNVIw0jiz04dE4pFR2Za5KMGBcUGByEtVwsPH+3uE
         SDXNBhUNlmhDFoP0aO5IMvS5YUhkACRef8cvSxNg0g4iL5jp9PMf+r8hWrCB7CeV7VjV
         8g3+etkWVCI6fjjM3E6j9Y1Vobvn45sN11i+2x8SOYKsRwFF2DW0DacDZV54GS0Ab35D
         CMV62zLR9BVqMY82Tfv6EuhgUqH/255I8wY9FJZ2EIqyocFQx6Lty5ymQTRlDLW3nigy
         kx5A==
X-Gm-Message-State: AOAM531uQcKpOTPXhyselleFjmiV03BGa31QSWFqpumm4awLyrqHnxts
	qeXnK68RhdnDftdhTnFHtAE=
X-Google-Smtp-Source: ABdhPJwv0yBuY7d0MfgKAcpKjachZOopgWoQKdVrkK1wTAITj8GHEW2k+TfIkxSIjup1tYpA8zD69A==
X-Received: by 2002:a5d:8d0d:: with SMTP id p13mr113200ioj.129.1628601682603;
        Tue, 10 Aug 2021 06:21:22 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6602:1849:: with SMTP id d9ls713925ioi.8.gmail; Tue, 10
 Aug 2021 06:21:22 -0700 (PDT)
X-Received: by 2002:a5d:8b03:: with SMTP id k3mr156554ion.203.1628601682275;
        Tue, 10 Aug 2021 06:21:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628601682; cv=none;
        d=google.com; s=arc-20160816;
        b=Wuz1kieqY6XLGKRiz3ARXngsGtUn5M7xoKcHaXoh1F/VvT7mFlJRrkoU0BsRs7DZtA
         mdRzrVjqSegL8fSgNj88CxWbVmho9e0ciDaF+A460DXuSFtEBh0nM0m6FG+83fS9qKoy
         mQHwBniVqsg9G5RpP1MA6PyrJXjzB43lcUELbE0VkSc/7f0IEP2OP3kFm7l7br9TJyqz
         5NUv+P1XfV6o+KtaBjfSfTpXzN5x9lh6IcYxHkwvkVV8QVqya590oLFHiIPV8lrV/7j/
         PVECAoahMOwBnLQOI8mLa+1ZSSTGTv5UrtEY62FnKru9cdytYHTDpOsRMnG4Il4BhKvI
         sUqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:sender:mime-version:dkim-signature;
        bh=2tvLhkad0w+Mh63WhnFJkmRFgYsLXsJmUqGVjzUAFIo=;
        b=B0a2HNQ0WgUXH6Br40PNxTIdxAm/gPaARtXQEApXUzYMpWJZ5TwoLVMobkgCkoRyxA
         Wmijlvf4fK0hgyYvnu95kYaWU7ykZL9QoWzv/4FiH6xTongoOUxsuTDOPMdKDkqbMTDc
         i9aUX+XjNQRvTv9+/GJPSoZcxnrwpXNA7jTfI0Oc0EtNlk96D2oNB4fkMSzeHZNTr05o
         tEKE5QZK+4qp44VzR0q4K+Qnb64T2h59Op7FoB6DYc5XUhpsRpLD2ZtUuD8I2H9q3z/F
         DEH+EfiTI05497fgcEB2FT7Wc2gfQxMbRxmW7pehMtwe6r2WQUTk3ORm3RIWHtG98eXd
         eqgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="N/TxPAPc";
       spf=pass (google.com: domain of immeublesourou@gmail.com designates 2607:f8b0:4864:20::e29 as permitted sender) smtp.mailfrom=immeublesourou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com. [2607:f8b0:4864:20::e29])
        by gmr-mx.google.com with ESMTPS id l7si420968iol.0.2021.08.10.06.21.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Aug 2021 06:21:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of immeublesourou@gmail.com designates 2607:f8b0:4864:20::e29 as permitted sender) client-ip=2607:f8b0:4864:20::e29;
Received: by mail-vs1-xe29.google.com with SMTP id n22so12302672vsq.11
        for <linux-ntb@googlegroups.com>; Tue, 10 Aug 2021 06:21:22 -0700 (PDT)
X-Received: by 2002:a67:22c5:: with SMTP id i188mr21662818vsi.33.1628601681738;
 Tue, 10 Aug 2021 06:21:21 -0700 (PDT)
MIME-Version: 1.0
Sender: immeublesourou@gmail.com
Received: by 2002:ab0:3903:0:0:0:0:0 with HTTP; Tue, 10 Aug 2021 06:21:21
 -0700 (PDT)
From: John Kumor <owo219901@gmail.com>
Date: Wed, 11 Aug 2021 01:21:21 +1200
Message-ID: <CAHdg_cRutkPF-jW1eY1EU9_Nu=aqJ_63_auKoge5xQ-6A3r25Q@mail.gmail.com>
Subject: Urgent
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: owo219901@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="N/TxPAPc";       spf=pass
 (google.com: domain of immeublesourou@gmail.com designates
 2607:f8b0:4864:20::e29 as permitted sender) smtp.mailfrom=immeublesourou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

My dear,
Greetings! I trust that all is well with you and your family. Did you
receive my previous email?
Regards
John Kumor.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAHdg_cRutkPF-jW1eY1EU9_Nu%3DaqJ_63_auKoge5xQ-6A3r25Q%40mail.gmail.com.
