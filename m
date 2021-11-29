Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBM5USSGQMGQEWBGOHMY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 77238461D7D
	for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 19:21:42 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id x14-20020a627c0e000000b0049473df362dsf11258475pfc.12
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 10:21:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638210101; cv=pass;
        d=google.com; s=arc-20160816;
        b=pxR4bcBYX7bROkTZGIhxF02ml6rooOyhUSbcFXvRpSsu9eXXsvmpw3GNLpMn5H/sRi
         vf1KRhb4hX3IUKma/Mss6J4cmH3ZoKaRcgLQQ6TI1rFWb4lgS/NFkDxRYtMtIwU5Yi6F
         pNQ2Ho9o0YdV4ZYb5virXQjoAO2BhJgdiHYs3Rf1fqIxaOo4oztr1SoufVk1LM4GdV2F
         WrL5USPnqC3tlB/YQPjHi3IC22GmCter4JSQcidP8fJe/EGDxeYQs8t1pHIO4ek/myzR
         q50NfyR9f6ArUi6U2BImBvyRJeIczV2OkedEvxQgOTHPV+Nphvy6G7QmiZIkRsEIRZ4h
         uKZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=mdsdHUjqj/98OXqvT/Q/KxtUyVAHfi0E6fkE78yUdig=;
        b=jRLyKpW1VsDeuUAeVeAOpx7o4tt749qOsYCoX1jvWXaooyRco1E6TqFRlgytOv3fEP
         TKATjUQsM0/PVMcSpQ5BtNdePrDCakrxTM4yThv7mz80tUrbSBSvOwUkwOXmiPURseB4
         JYpvhOsFn/8Eu09iSvd+LZTTa46FLbbzOPy1mPMalaQHv36bdlC5MAfhHSgGrUNK3D0T
         QmFohyl83UudKH0YuSqpyyx/l+RXs9eqe0CZCCgechFPoCB7Diugnfs617B4aKF7U3Va
         jDeAYsT5wFLaSRj2lT09zisj8ZHQZFpr2tlVDdlAMTp7Sr54HVpJxEjYGSNrAQ7zpeh7
         NLUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=i+hqBeVj;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mdsdHUjqj/98OXqvT/Q/KxtUyVAHfi0E6fkE78yUdig=;
        b=n4ImgY3QpNbvy5yisgTqP39MymCtPMonHpFHj9fJE9u6d1G57akF2va0m8g5JnzJmJ
         W0LnfIPccqMQ03sxW4le6gEnooBO8O6ZBWMgR5D3jFAyNPLs5VQp+hb5uL8zzqO65ocU
         0os3V+OuIZUui5D+KDjc7nYCRhYbievszL0gWx6DeQafTidc37y4+401DbTC8NLtxjQl
         2Bno6jHFt6bastHJNdgvuN5SvdXc9WGCAmtHLQVC6XNNQMgtit/cLbjjGfrdgtp2rPRU
         xhLeDLhFbGkfIWrSgKG9koxooB7rwHY8Zbcuzvmrfk4UWRm1/mQcWVk9ImXUwFN2v3oP
         Y23A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mdsdHUjqj/98OXqvT/Q/KxtUyVAHfi0E6fkE78yUdig=;
        b=LY8nM+o1FbAMKj03gWebCoLyzTAiXq0OpfktmlvDmjVAR6wSgeOR4XVwiRxobuKkqy
         PpiToWROJsd9QmHhb5Yk94BGCQj9nomL7chdyD+b83nXtMdjROnMJgVx/AZW+AXbm4Hf
         fu5EB4i+lUjOl7qqjSCE+XtO63aj1f+vqAT+O05C5uYYpygT4+3aYq/7ltjm4TntPlwt
         WFOLf+zr9AfoESRo8ZAJunrIWuVFFU7NEcCfLeWtr31gy44jnDVYrPrHDZ3jwVcQ7Fvt
         LetvO1XyMgspdzR0Jtx8YwnAh649TAQYM8rgttyxHQxsacZTyp3u02xqLmb4jTwCspUi
         sJIg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531zAtDzI3jG0XKJJetlmOdCXcKz8Hj9jZRhk+Xb0B4A08m6nrj6
	vDThjewyNPbECfsoKmEWKz0=
X-Google-Smtp-Source: ABdhPJyGrzspeaCBwwDs8vrM7KizMaLhTy9ux6d9d9k/wN9hS//6S/PeWj0JJoqnWoIUxzxgQRwn9g==
X-Received: by 2002:a65:6a4b:: with SMTP id o11mr36755599pgu.305.1638210099949;
        Mon, 29 Nov 2021 10:21:39 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:138d:: with SMTP id t13ls5775017pfg.10.gmail; Mon,
 29 Nov 2021 10:21:39 -0800 (PST)
X-Received: by 2002:a05:6a00:8cd:b0:4a2:82d7:1703 with SMTP id s13-20020a056a0008cd00b004a282d71703mr42048278pfu.43.1638210099134;
        Mon, 29 Nov 2021 10:21:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638210099; cv=none;
        d=google.com; s=arc-20160816;
        b=RvgfXDITADRjd+gd3bN5Ka3FFkChNt1qpvKksLP/TEuSlwvUvVvGOwJJCdUICTLL8c
         YSehbPzUcJh8321NK+kwVnDP0SPOxb9rrbjtcArGgmL0ZhNK2znOIF2xSKWEIuhxiXaV
         rjrqULzpvs1aw5bR55WiNBijsCSqqFvJxf23onq6vnuqjG7BX8hFEmwesrlzG9XYuJDF
         1xAzvo0KDoNXBYwJL3D2oheAycp/ju/KUOIPb614bbv73yXeyo8OgkBPfFnbnFqxVNjL
         JcxKV/CVx6aywLWAux+uy6Ai2FzgW9jQHCxyMJ49HWLhvD4yofwAZPObt1VuF/sA/5+i
         m02Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=WV/TNnYNnFcZxzUqPd3ZA5cAcLIoTgfWNZK1F+bgrdE=;
        b=v7qHLBdyYPski3mJHvXVVR/BGtHT3K0x59+/+S+WvD7vsI/zWp9JiIS7b9RGs3gFf1
         9v7Q1CWIAqMvos8OTWf4W//uy9X9yyghokiYD1RRC48bHHdOiHvmNmd6h7GeyOPULSkB
         EfRtX+OyJzjPH6+yfb2SnYDeTCBy+q1FxSLTChPFGPKq/I2aYwd83q4XLUIa5e9W8zo5
         YQYMtlJ3nwxQDZTQeksZHVFyO30bE+kTjo9Bxs8fjkYUBcGqobCLjCQ+5D0SE+L2/xoc
         u7/wEfgmydHPD9ViYTwaJMpJduypjS8vrBdX+5O6DEThFFx0Y+oMR7Z0tuQNHt9eLxVi
         wTyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=i+hqBeVj;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id l17si672793plb.1.2021.11.29.10.21.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 10:21:38 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <logang@deltatee.com>)
	id 1mrlHS-00ANgo-Vh; Mon, 29 Nov 2021 11:21:36 -0700
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com>
Date: Mon, 29 Nov 2021 11:21:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211126232735.547996838@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: borntraeger@de.ibm.com, hca@linux.ibm.com, linux-s390@vger.kernel.org, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, gregkh@linuxfoundation.org, linux-pci@vger.kernel.org, ashok.raj@intel.com, megha.dey@intel.com, jgg@nvidia.com, kevin.tian@intel.com, alex.williamson@redhat.com, maz@kernel.org, helgaas@kernel.org, linux-kernel@vger.kernel.org, tglx@linutronix.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NICE_REPLY_A autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
X-SA-Exim-Version: 4.2.1 (built Sat, 13 Feb 2021 17:57:42 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=i+hqBeVj;       spf=pass
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



On 2021-11-26 6:23 p.m., Thomas Gleixner wrote:
> Replace the about to vanish iterators, make use of the filtering and take
> the descriptor lock around the iteration.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Jon Mason <jdmason@kudzu.us>
> Cc: Dave Jiang <dave.jiang@intel.com>
> Cc: Allen Hubbe <allenbh@gmail.com>
> Cc: linux-ntb@googlegroups.com

This patch looks good to me:

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Thanks,

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/7daba0e2-73a3-4980-c3a5-a71f6b597b22%40deltatee.com.
