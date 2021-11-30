Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBPHTTGGQMGQEQAJEAWY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C82463E8F
	for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 20:21:34 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id v32-20020a05622a18a000b002b04d0d410dsf28491455qtc.11
        for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 11:21:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638300092; cv=pass;
        d=google.com; s=arc-20160816;
        b=orWQwC1pRJIWEX0jYSQX92yqV3YzExZKVeakDAPWv10B4EuzmWhLujjew7nioa4NyA
         ZpOMzA9zE34a5DODzP1JHpuKdKc5RawL/06z3nZu1dScJdQY/SzD8RC3vhz8kWfyZ/J4
         yPdBvMJa5vDv0W9S3U13WsmQPldvJ/XzkWvkRvEHuwdPHQuTiC7osn6d5HcDdhoUDVCr
         KiUCkVc9V23mBsWes0bhqw0QSt03dypgi+R1Is30RG0K5Estmx05BL++UyfYQcOKp8B+
         jUMTw2/Ts4S7O0sZNnYjU/OuVEJWih+SAfuDrmZ29UtT/ts4tEYq++CLtXftkXEHtHi2
         yPGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=97wbfUhCYWT4lhpCK3xcnBzlgFtF1w4ue0qAuQaUpZ8=;
        b=UVAaOYaJ8MzPTBmDyp76gT5zCRRULckKfWM/9+30ukAaEWoa0PKk98oDluvGtx6rXv
         5o3vZzL/lfUuVL7GfCUd+4kA3teImpQiBbXaUbw/c/m8WLidV9g3oK/BfoR7/rhuHMiy
         /60GdcykdatZfAGHFyJs2Tme41iRK2YWjhPf2RB7jRIqwxAFgAJgqebC+mpDfAKDxIHV
         gJGrvlAPdlXpg9VwLeRaHSMQzYZ/vqMiKuYvSDsG0BoS1bjUTvrL9JSFkXUnbyQF+aaL
         b4cedPS5Fad+EipRowuY/MFMH/CNntIbWeHX3QWX0plmlCY3cDGP5he8ecXoqUu/iugG
         0GhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=VEornqpt;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=97wbfUhCYWT4lhpCK3xcnBzlgFtF1w4ue0qAuQaUpZ8=;
        b=nI9R6kK2m4DOqJ4UuoHmmHbTdaqgDi6okhtI4kg5NECif0sac/fm5HnL+wl5nSlpYi
         5UTg42yW5w3Lky7RV9wX4rBj2lvisLl0R7w52XTsIKpJ3S68GI3zBudPfKkboZNjt0hT
         qO6YhLGy5vNi1uvtUbur9+MqipChaMKjaIjb/tNRM3zzeLwrwlv0NWrIc8ChO98Mt0dg
         SfEYW/WxJimEyCMaPTkm1NoUq5U96tmywesXCcpwuOdT18RqZQMEskoXGezxRLoT20uG
         DRZh9CLI8zaE0ip7ejHENeSjyIL7V7BHM1hMtaCJtrAphWs1sAuTNOp/xku53baefHZx
         S0Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=97wbfUhCYWT4lhpCK3xcnBzlgFtF1w4ue0qAuQaUpZ8=;
        b=GWFrbJ+apQ66DmoojhRRolQTJ7R3KVjDnOuchSHb2uyjk6FcOYRDbIappK9WTWvid0
         nhvrjBUTryZFnlQAzVScZRkA0+vwLnqKpeM8GiePvhyBZHq2cClYH7/mzK3cdHUZT6Lm
         3y3WFIGNNy4Yb2UhmEdJdQTyDCBpH+t7VFYXehRqbS5JOJPm9A0bsCVlTEmLx8k79QAR
         tGNwMrgAb5WlaW4LuZN3pHpY6P+j9zDUQpjXvsyGGo64JRbzPrfziZki1O+bV94c5e1p
         Js/wToreLlvqch48QspPJBOW3uWrOxY5hOLyOeenSk3yx5N0v0W1n5qGm4McDgV6szbF
         kJnw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531CiOoXP2TgQtl/WMradYWgnKll/W5kPk945e4hdE8R+41K+i9q
	zIjdd+dyaO/AK7IsmC9SGDQ=
X-Google-Smtp-Source: ABdhPJwAq7Zc1vYnH4rsZSbQgm2MuoPJxXCNNopMtY9+Oshq6nlnynCan94xrHuJfM8AmEpUQoFRnQ==
X-Received: by 2002:ad4:5d63:: with SMTP id fn3mr1014380qvb.5.1638300092275;
        Tue, 30 Nov 2021 11:21:32 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:bca:: with SMTP id s10ls11778664qki.1.gmail; Tue,
 30 Nov 2021 11:21:31 -0800 (PST)
X-Received: by 2002:a05:620a:27d0:: with SMTP id i16mr1419817qkp.440.1638300091844;
        Tue, 30 Nov 2021 11:21:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638300091; cv=none;
        d=google.com; s=arc-20160816;
        b=d7Rsy2ErCHqiwXhuaA+BV5vZn24/pIUPaqKR6Y1bXL+bb9ANPbPxvRPvLOQie1Be3I
         NTcqkg1vnet35oaZRZplzUqXrkLu4kpumjSxr/PP8sXTYQs82grHXHweCe3oI97uJg9f
         nqyCyYzNJY8V6vxNjNhWM912jViKvDIXoBCg/Q2sO+X/IW4+GIpMLB8FWSE5zawk6vSd
         XPqnbTtMwiMObrd9c7mlg3YsFqSQbZGhJ+DRKQa1iwSGzLNvKHV2pn1QImgyEy9goXfI
         NMGOLbkT+T/h5Ljmhc6jnU3HmVqwas17uCnz7Ci+UvVpjSeLTc4G3TqfUUKo/f1blRFS
         unEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=Dlyz49EtKbJqaNzZfY1tx0m9Yx6JL073qjZfik+uWwE=;
        b=VV1Y/Fnl/m9N7rN433t88a5/H4i3YC/MxryrQoIMzL43XQQ5M1LgdCNtfKnxcgD6/l
         VNrOBOx0HGawcY6guBILYMAKVZBnWGzJz787zgq4170VgGft/b9nghAGcyWvqx5/I2sT
         1QAuYHL5vby8ZHaw1R3TwKp4NxYdMwXmYFmuP0uS2vI+zDwsgO585hWw3cKXnIhW4FGX
         7Li6lNhC+eLuMGGNUzishX3JngDD7m0Go8JYj1O6DpF7zg1tmJzEnDUHP91b9hzosdhn
         XScRuuQMmah1NUTpDqXzTNRWtCRO8hDIJ5qImO18njrz3wBolV33OG+F06udMwKEHGXt
         oZ6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=VEornqpt;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id i18si1705344qtx.0.2021.11.30.11.21.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 11:21:30 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <logang@deltatee.com>)
	id 1ms8gy-00BCOF-Ov; Tue, 30 Nov 2021 12:21:29 -0700
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com>
Date: Tue, 30 Nov 2021 12:21:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <87ilwacwp8.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: x86@kernel.org, borntraeger@de.ibm.com, hca@linux.ibm.com, linux-s390@vger.kernel.org, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, gregkh@linuxfoundation.org, linux-pci@vger.kernel.org, ashok.raj@intel.com, megha.dey@intel.com, jgg@nvidia.com, kevin.tian@intel.com, alex.williamson@redhat.com, maz@kernel.org, helgaas@kernel.org, linux-kernel@vger.kernel.org, tglx@linutronix.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NICE_REPLY_A autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
X-SA-Exim-Version: 4.2.1 (built Sat, 13 Feb 2021 17:57:42 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=VEornqpt;       spf=pass
 (google.com: domain of logang@deltatee.com designates 204.191.154.188 as
 permitted sender) smtp.mailfrom=logang@deltatee.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=deltatee.com
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



On 2021-11-29 5:29 p.m., Thomas Gleixner wrote:
> At the conceptual level these interrupts are in separate irq domains:
> 
>      |   _______________________
>      |   |                      |
>      |   | NTB                  |
>      |   |                      |
>      |   | PCI config space     |
>      |   |     MSI-X space      | <- #1 Global or per IOMMU zone PCI/MSI domain
>      |   |_____________________ |
>      |---|                      |
>          | Memory window A      |
>          | Memory window ..     | <- #2 Per device NTB domain
>          | Memory window N      |
>          |______________________|
> 
> You surely can see the disctinction between #1 and #2, right?

I wouldn't say that's entirely obvious or even irrefutable. However, I'm
certainly open to this approach if it improves the code.

> I'm way too tired to come up with a proper solution for that, but that
> PCI_IRQ_VIRTUAL has to die ASAP.

I'm willing to volunteer a bit of my time to clean this up, but I'd need
a bit more direction on what a proper solution would look like. The MSI
domain code is far from well documented nor is it easy to understand.

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa%40deltatee.com.
