Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBUVX2PTAKGQEQTJNQ2Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-it1-x140.google.com (mail-it1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD8619676
	for <lists+linux-ntb@lfdr.de>; Fri, 10 May 2019 04:02:59 +0200 (CEST)
Received: by mail-it1-x140.google.com with SMTP id 73sf3875034itl.2
        for <lists+linux-ntb@lfdr.de>; Thu, 09 May 2019 19:02:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1557453778; cv=pass;
        d=google.com; s=arc-20160816;
        b=KB9NHUhfUUwzSTaI33ZRpF0HzVgvx3th7LVTJdOFwgzEzFzGwWSaV43jwbEu0q0VDF
         1xAMKrTbklKkumnO1mTEf637NeYRggpJ3SiX2wdbgIftCibBYnfeCJhrE6WCgdqKZcSS
         Vn8ItjvVczby2IiIG+Ej6f5G+yP8hwFXwEBAGVlBwNXQ4OfkHsS/99JooQjcIKBWyAr/
         OgBEPk/GVHpI6a0KVTqheJzOSR2SbVOjAPFuGllvD53aZcJLMSu9GbuA06BAOZWcOGt1
         92COTmwZHawEc+xpVg0fBZ8vkAWE3vT23qFMfxVZy6jpT8WAP+ZdSmDiKGqeUuhwxFuF
         itLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :to:sender:dkim-signature;
        bh=YSQcd6sEKKwUJk6h/k/TOJr7k5TCMHfStb//RNwTEGk=;
        b=Br1ClcKLCGQWQYYBm0EFS/FEY3B1JJ/gqIAhVaZGwlmoPAAf91K/e9Lgzmct/sV/wM
         MB2kbclorIVtmyKXPSiIPuVq34cKm79Lj+Tfx4oDfgQO9dDtRQXXWLZ3go/nUQ3H0vn/
         ahabfy0m9CrD4SHPwz96UoUKVifbcsHiQIcfMctY1n9EY9TlhLPUGmwzihUUcbssg4gH
         lmrU62rMOrUFH6i1spO/kx+OxXq59Ko4LavBXdPPATeI7uP4JHtqPSCI0TFQIQlKFPle
         Ee/JKoovcwaaJh93MoaoGQJuDfTaniv+vwQXypJYHE9Zccn6YRM1jnfgmgWFhV0VLsf7
         JKug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YSQcd6sEKKwUJk6h/k/TOJr7k5TCMHfStb//RNwTEGk=;
        b=eILIAPJlS3rjJCcaOdNGgkym6OtF+AQFbNsKftUVJQME4aDl4PyFYJHf+D8/Wz+FRM
         ZYAU6DvJn90iEsEEWqCyQYRSfNgUAsTsvG+jpCjou7kONuUG/WAkytXQusinZ34Pocil
         iubxlCGsEbixZHtopWOsEK4BfBKBhAagoiIu4Z8b/uwdVBOm/cvYgpxB4uZQhnpznW+6
         0M2eHMh7pNCixhuRyTn+7TGxgNqnPuaisV5SH+fSFjFDSjrt/SAoUnDM61x6+8I45ROe
         wcXnJK1NDr7GIwVncUZ/u/zqHePPQL3YxT/R3yEAmrDO1bBdlCRwcrc3GGqcm+9FBBee
         rjIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YSQcd6sEKKwUJk6h/k/TOJr7k5TCMHfStb//RNwTEGk=;
        b=B1ZYUvVYwTYqwF1oTOd8P45ixaJN3hGsFuqbLnJJcsT/QaHRgOTaa74pIHIFZdxRky
         OdT6E+Mh96tW6yojIkIcL7o4VMFWoDJ8zg9olWDk+1UrIeSmkoxEaLFnxubt4AjyxiK2
         4zi+LlZTK8phDBH0E1pcgyQLoH3MsfjCDGnZ/S1Z+HbxUIIETsEGMDuAOXCTsgjwSXpN
         ZUFdryzG7Fh3n61kdhn2XerKvyS9bQNz6lgowoVH6HvtkXouFnO+62/xWjiOjGQlTvaj
         yWuf+Syk3xrA3IwIVmkbKLAGi6viZLclkQ55BtpHAYewJp30f/3q0+kEXCOD+B2tf+ln
         WOEQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUBTc0T+12v8KRf2UrJ5awfT9jvY/AXSiaz875UV08rpE2JKnYz
	DnM/83muvNcOwGYP7XuGzzk=
X-Google-Smtp-Source: APXvYqyiOYqHvTR97lyKEJQH/6S9DGgzr8rFYZ/COwobWxaLjaByiCjyHtZNp6BAYis7Oj+o4luQgQ==
X-Received: by 2002:a6b:8bc8:: with SMTP id n191mr4749846iod.86.1557453778346;
        Thu, 09 May 2019 19:02:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a6b:7d48:: with SMTP id d8ls660536ioq.6.gmail; Thu, 09 May
 2019 19:02:57 -0700 (PDT)
X-Received: by 2002:a05:6602:2049:: with SMTP id z9mr4915667iod.46.1557453777970;
        Thu, 09 May 2019 19:02:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1557453777; cv=none;
        d=google.com; s=arc-20160816;
        b=HAJqzgYLTJbCRl5p8Q+oe9FnMGMzRIofW4J0LhTGBfYXmEtDBCGMdhpRYnUvQrQa4D
         BbWsKdqxxOZPL6fZ28DWIUbM8K8eyKUrXg9IDutNVgCltF3oX9embhrAAUurl6SW11Zv
         V+yQUWH43y4j8iJHdRaEVy7lia4SjGPF9juyLqvkT6TY69FgpIRuhQwXq4ZSB6p929uU
         pa3qdXtgycnVwhQ2/lwheP/fHWJs94WKIfAzCnEwq9yG9xgdzu+Cyr/P5jctRnP5Myh3
         478Zav+Tf71TOrrPmXP/6CgClTd6ezbK284K23H8L2kqTCljclo6cQxDNiI6HLTX6a8V
         XpRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to;
        bh=Ky3K0MuSIW9uqRoOYPqEDOAaFOHsiH2SDnZ+M5N1o/I=;
        b=mkFsAw/5mHOI0aZnW9pKbL7TjCvi3OG2cKl8IVvAw23Sz3GfPcgGqlnJVA6m1vt2Rz
         KSc29SG23nmM0ohBeUgr60h5fGjnlD0qsCzOLiEfCpvOwq+Ftq+PDk7KHyxknIciU/OW
         KZevvx0bcK/iCg4kouiIRUca2YvWzkm7F2qLV+kgOlF/QGBntEaZ3K/JHj7hQnGVVQX9
         OV58eejENmTX6n2ajm3oiT2KZQfxbsL7qMZKNUdVk4M8yvwghQ3dZg20rpwSckSnpW8V
         UzAsb+bvGAWqQG7jvzMXcAB4c3eB/uW9TGy22La2gyV7pQrr04oDK6bZTXCjDeWvCVS9
         +ErA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id d197si563863iof.2.2019.05.09.19.02.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 09 May 2019 19:02:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from s0106602ad0811846.cg.shawcable.net ([68.147.191.165] helo=[192.168.0.12])
	by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <logang@deltatee.com>)
	id 1hOusC-0000OG-0o; Thu, 09 May 2019 20:02:56 -0600
To: trifundroid94@gmail.com, linux-ntb <linux-ntb@googlegroups.com>
References: <dfedc9af-85cd-4b78-9249-3ce794fbe3b5@googlegroups.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <b4d7e6a6-8637-bf15-0ec9-e1024ead9933@deltatee.com>
Date: Thu, 9 May 2019 20:02:54 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <dfedc9af-85cd-4b78-9249-3ce794fbe3b5@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.191.165
X-SA-Exim-Rcpt-To: linux-ntb@googlegroups.com, trifundroid94@gmail.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: NTB connectivity issue under heavy load
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of logang@deltatee.com designates 207.54.116.67 as
 permitted sender) smtp.mailfrom=logang@deltatee.com
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



On 2019-05-06 8:43 a.m., trifundroid94@gmail.com wrote:
> Hello everyone,
> 
> I am not sure if this is the right place to ask but I am going to anyway
> since this problem has been bothering us for quite some time now.
> 
> A PC running kernel 4.16.7 and TI's ARM based SoC running kernel 4.14
> are connected via NTB.
> The ntb_netdev drivers are correctly loaded on both sides and the hosts
> are able to ping each other indefinitely. However, when under some
> heavier load, the connection breaks. At first we thought that it only
> happens when running TCP but it also happened for UDP as a transport
> protocol.
> The Wireshark logs show that the hosts simply forget where the other
> side is regarding ARP protocol. In other words, they know the IP of the
> peer but not its MAC address. We have not found a way to somehow
> hardcode this, especially knowing that the MAC address of the virtual
> eth made by ntb_netdev driver is randomized. The only solution is to
> restart the whole system and start again which is unacceptable.
> 
> Has this behavior been observed before? Is there any fix for this?

I've never seen this and I'm not sure I can be much help but you should
maybe try checking the debugfs entries for ntb transport to see if
packets are still getting through. Just to narrow down the issue. Are
packets no longer getting through and thus arp requests are failing? Or
is this a problem on a higher layer with addressing?

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/b4d7e6a6-8637-bf15-0ec9-e1024ead9933%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
