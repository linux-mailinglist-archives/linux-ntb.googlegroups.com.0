Return-Path: <linux-ntb+bncBDB37AVV7QHBB4X7WX2QKGQEE2MU2EI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5901C2605
	for <lists+linux-ntb@lfdr.de>; Sat,  2 May 2020 16:13:10 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id m138sf15986037ybf.12
        for <lists+linux-ntb@lfdr.de>; Sat, 02 May 2020 07:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LWAE5wpgxpfeAcJgvFBvBnWu4p8nAozYrRsl8kpY7DM=;
        b=VHvYisYeNf6/SCPlV6ds4YuEDYp63R26GDJ2rGWT+yKxKr0L+U4AFX5Gu85QmchFkW
         1idJEOwkR26WVYVuqFxcghgF7gDWv8Th8SfRJ+BqXXwu9aJkky6mkiOF3s7LtMr1SOSZ
         RaYQg0xA70PZA0wT8Ms7zxIyE3OihPypuyoQQmKs5mpgVMGgST06ksIP5FfEt0k5TMhL
         fkBgcGa7gLrtrVNMz0Hlk0Lskb9GPTFxsz2TB/oyv+3ely1L+zvViQbYG2Sso9hgBFEU
         14wS7WkVRzpNyYa815AqHQA+U1a3d1Iz6FP1Hu8EhLWtduLWfnJli7BW/g0niCnPpKgZ
         Msxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LWAE5wpgxpfeAcJgvFBvBnWu4p8nAozYrRsl8kpY7DM=;
        b=QvmiY82Yvmhi7w6t5QlXujfgsXsI7O63aXZFIT0g3zrs6TOJMiEDzRiJFZLSudAOtu
         Zv1Ii0Pjf3WpRkmvdHdij43bpA3OX6/WBn8JPXW5Mfb/AE/Z1MfLRGyNb6XJ2Ip3V1Nt
         ZIrBKyJhu5ZCCTAdSnMl42zTXm4taxBIFIluJQ13da0AI7C1jW6y+OzRuAohf4Wj7jGl
         18DFaD2xl1Dt8AdE4wF/JRhjzSqJtWVtdKrJXRMOxEJAHf3tEPQd2pa50HSna/Mh9+la
         5xcRFJUnLJ9H3r/+H0G4YdBEiDvJ06aM1Fre4RvUY6ftI5BZntd8ofqMcv1hdD+Q2MqH
         fV8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LWAE5wpgxpfeAcJgvFBvBnWu4p8nAozYrRsl8kpY7DM=;
        b=W04J4zIe/XuVbSkuKxpMiHt5rhDMonxOYlKCprzLKF5xLoELrgqrvEyNZsE7RIFvdh
         UkYZcrYk3mHF4F/9E9CSGDUo5YkMg9zlDN8nq4k+KRhmmG5/tVv9yw+dJO51qvd162Le
         lRVUe+RvL86yCk1l6tqeIGgs6nC3w1dbFWJYlnkFVcA5xKZy4nohyLNR+pjAFJdGMkdJ
         j1GCaTymONumX5Pbzu5o4YtoUrL06loIC3UIUV5qVF1Pfpj1451HEn4yphUcKX1+Y1Wx
         qe7LFkyRUEQnhEb2ex6At/MhJcmh1ps1fZUiznFcfXEBL4PBe6SxqYWk1nlh6AYHUeu3
         R9Pw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuZeh+QvjOAZM7S2OlXflJH1AN7+rwkGfFswU1KOKofy/DbG5NV+
	/7ougbDuzO/VHPS6DV+g8OA=
X-Google-Smtp-Source: APiQypIh9oyEUd/J4b297+xW6srU1gaxwzqQi11amyCn1vpx/RSYM1IUPsD5CpIkWYDWnJBNWdc45w==
X-Received: by 2002:a25:b8f:: with SMTP id 137mr14534430ybl.21.1588428786792;
        Sat, 02 May 2020 07:13:06 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:71d5:: with SMTP id m204ls5653819ybc.0.gmail; Sat, 02
 May 2020 07:13:06 -0700 (PDT)
X-Received: by 2002:a5b:48f:: with SMTP id n15mr13851858ybp.507.1588428786270;
        Sat, 02 May 2020 07:13:06 -0700 (PDT)
Date: Sat, 2 May 2020 07:13:05 -0700 (PDT)
From: michaela.terese1@gmail.com
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <e03649f2-ce37-4703-a649-9ed7c05c4d3e@googlegroups.com>
In-Reply-To: <20200409180831.GB21666@kudzu.us>
References: <1586416284-3246-1-git-send-email-linjiasen@hygon.cn>
 <20200409180831.GB21666@kudzu.us>
Subject: Re: [PATCH] NTB: Fix static check warning in perf_clear_test
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5216_1484545490.1588428785685"
X-Original-Sender: michaela.terese1@gmail.com
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

------=_Part_5216_1484545490.1588428785685
Content-Type: text/plain; charset="UTF-8"

Unsubcribe

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/e03649f2-ce37-4703-a649-9ed7c05c4d3e%40googlegroups.com.

------=_Part_5216_1484545490.1588428785685--
