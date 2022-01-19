Return-Path: <linux-ntb+bncBCCNVOPP2QNBBE47T6HQMGQEHLUZK3Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC4A49367D
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Jan 2022 09:45:09 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id c75-20020a63354e000000b003408e4153d1sf1206187pga.9
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Jan 2022 00:45:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1642581907; cv=pass;
        d=google.com; s=arc-20160816;
        b=u9KQUYZU3l6A0qF8wjdSLmpucw3xqBogy8KlRp7WzsmjZdh2iLg0F1WwHhj3/5u0rr
         WrU2gnsBSbowbK5JQ0HneQ8eqqGq4KuTvTm9A6juzTgosWcO5OPkMWPESjnA1Zip7Cpk
         c5iUKCIyLdj6RLvY8oyKdJGIshksXDLTaTQ91XknJFVhr6bZzY5NFcloeVmb8XC0CLgV
         WeB4SM/TJorG8Ekegr3ZqewZoWKn3JavLmek1jkL2HoxZOyRbya5sx5MCH4SvWncCVWx
         XhRIyLOd1jKirWhR3tb7SSLuTaryBIREpg/c7g33qtNVyrhs2TVDiWpFP2Xn++CkIrsA
         2/bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=rvPf35wh2r5nCZolCZoRhimZAApfon2LRRP2dhZyPgE=;
        b=E3kuuim/LPdGVcbCi5KTgiCob/t7uDHRlKjUCIoVeH8re02XHBxdo1O8Be/21o90I1
         geUWVB/NoegQqGKQ+1N0+LMzjGcnD8ELnqjrNmyBlSxRhwFkrkzUCqpx4HH/yiBoP0qY
         6J4WGSKPp4sLjzpJxqIHT+ogUGf2snnoY0ukYOQ2ovjgDeqG1Z/ENF8nFIrKKljXsUc7
         8AJ7HD+ONtiuzNQP9eo6d5IhRJf4qc5Yl00NnDSu0t67hLGQfvTDk+qaXK96a0NHkGb3
         pg5tFWwfSG4v3XOxAzvigU6Ll5qbRAF8D5nYpdrI+W+4sfPFrXLNaOXDnwiMq3aAA7W9
         wdDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of hayashi.kunihiko@socionext.com designates 202.248.49.38 as permitted sender) smtp.mailfrom=hayashi.kunihiko@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rvPf35wh2r5nCZolCZoRhimZAApfon2LRRP2dhZyPgE=;
        b=p5KNTn0vkQ7B0WeEdC4HAStQ5ryEYTpopdExBptNaWU6N6a2nk934n0qJ2OcaWxOjw
         4YbeTzZyFEQipL5wL3faR++WjYeNQLj+tSdCXs8i0GOOckD10KGs1K1DZHAmzfZtx8C9
         udOCFa1t0WjCaHbuiVxS3PT3h0sE1kfXnJ+hMzR9R2QW0/CyoW47U/hfDmqf2hkq0iJe
         4QU51mrv6sEOI07G0yBoQiJ++bJIkjR7j0w74AyjBmt9i89FkjVzO0veWSYNe+CkTT0/
         iTNwvQEAitcKQ4J9gAKOt3R0VH9OuY8HovoWBgBGoy/fGAPCOkKwT3aOyMWuHZiqPVOE
         hIXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rvPf35wh2r5nCZolCZoRhimZAApfon2LRRP2dhZyPgE=;
        b=CJxBPx6EqjZBWBYpI1OG5FyEM1g5EccyEANuqh/mI6sZpYun+iGBKBF6YiQG3yDKfZ
         7z6art0wTV1lF+aKiL/dvFN53r0Bx7WJFyOS4ZbB2Z4N5kVC1dolwN1Xnb2aZE30yqv8
         QaGXrGC5eUTIXZYbpP+0bj62RnB29uupIyn3/cNAVBCMA9WyOphBcK+gzj1iPPCyb2h4
         x7jVbyzdjN+otGj9zJMHV+HFjDWtJDxD4Klb5Az7ZD0ROUtsw8+ph16AtMayKVNTCsOA
         RdlpROanWOgXJFfuvIKQqR5gN26CcnA+fIrXZrvypDG10GaG7e0HjVY5ubkm9OOyItCL
         9C+w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531311GmRmkAakSwTjDhD85FPkG+IwRJg5yrq5KkDHtdmSGViBoX
	JwHZbjfOxIz+4Ig8L0KEPHc=
X-Google-Smtp-Source: ABdhPJxYguTkx03mRdqhwPlyf2G/P+Y9GRj11SqtdeHIBUYZc+S6o6sA/jN7kNvVK6BiFwBDji0fpw==
X-Received: by 2002:a17:90a:4482:: with SMTP id t2mr3005285pjg.133.1642581907713;
        Wed, 19 Jan 2022 00:45:07 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:34c8:: with SMTP id b191ls551988pga.7.gmail; Wed, 19 Jan
 2022 00:45:05 -0800 (PST)
X-Received: by 2002:aa7:8c41:0:b0:4bc:2888:6951 with SMTP id e1-20020aa78c41000000b004bc28886951mr29828840pfd.16.1642581905804;
        Wed, 19 Jan 2022 00:45:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1642581905; cv=none;
        d=google.com; s=arc-20160816;
        b=KMed2B06081fGeOue9UvkxKkqfQ8cQMMGZvGpdaUB2udbbWP41iDhggTIAZnmMPEiN
         EhxRdWYTd/ATs3TUicTHI3OHScarFLW6/tI9GdMVWinwFgOf4r/iQpPbYrsjVi5gXYdH
         vp5OyrGKS+I5bEFafC+vBoxBMybDMFJd2ROzeYchO9MXZck9rFEEzEQNidRJmQMG5bGP
         HS19q9W4VPnQTBLUHEiE9GqBmCYY1t0+nosWV9jYPvrq3mYXSKaywKfpuHkw033UeOfP
         np/YOMZOwc9l/e8Xoqf0/FkOk12NbKguWNZfraCcXcVSObRt+pk/HFMgNlhkSpJ1N0Ku
         SNqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=OAr0GoXUKYzQQkw26d6VgQ1EQLS6d3mdSPasFtAsZ6w=;
        b=oQjBl8sCptkDN6vuNfyIp+Qbo6jiXncrh3DcECuxJTMYzOP03MrPg1eWAaCfqf38SJ
         E44ubqmV6r10/jzL3yr85Zq703ZijmBpVNUB7NFc+gqdPWDQlVEh9+UYiNXf9QGrLH/4
         Plas/5d/hYqMiXvq7rqh3goirbYDn3bqnkkzgc5Q2HzLXB8eV4ktF6B4/9jAtXDIJA/H
         Pna2x2RYCU/xFWo+wxJ7BsazTHKBV/1P3R+3P/dTnfSOCyzUCyHPQ6VjIQfCkIswQRUP
         mehdQx6kxkNlzgBLy7AHgmtqoY/4Q31ksUgfbWux4K47O89yL/TmzAgZikzYYeJYPjml
         G3ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hayashi.kunihiko@socionext.com designates 202.248.49.38 as permitted sender) smtp.mailfrom=hayashi.kunihiko@socionext.com
Received: from mx.socionext.com (mx.socionext.com. [202.248.49.38])
        by gmr-mx.google.com with ESMTP id z10si901929pgv.0.2022.01.19.00.45.05
        for <linux-ntb@googlegroups.com>;
        Wed, 19 Jan 2022 00:45:05 -0800 (PST)
Received-SPF: pass (google.com: domain of hayashi.kunihiko@socionext.com designates 202.248.49.38 as permitted sender) client-ip=202.248.49.38;
Received: from unknown (HELO kinkan2-ex.css.socionext.com) ([172.31.9.52])
  by mx.socionext.com with ESMTP; 19 Jan 2022 17:45:04 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
	by kinkan2-ex.css.socionext.com (Postfix) with ESMTP id F085B2059054;
	Wed, 19 Jan 2022 17:45:03 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Wed, 19 Jan 2022 17:45:03 +0900
Received: from [10.212.181.226] (unknown [10.212.181.226])
	by kinkan2.css.socionext.com (Postfix) with ESMTP id 11233B62A1;
	Wed, 19 Jan 2022 17:45:02 +0900 (JST)
Subject: Re: [patch] genirq/msi: Populate sysfs entry only once
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Cedric Le Goater <clg@kaod.org>,
 xen-devel@lists.xenproject.org, Juergen Gross <jgross@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Niklas Schnelle <schnelle@linux.ibm.com>, linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Logan Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
References: <20211206210600.123171746@linutronix.de>
 <20211206210749.224917330@linutronix.de> <87leznqx2a.ffs@tglx>
 <1d5711be-c26d-d57b-10db-1b45d279515d@socionext.com> <87a6fsa935.ffs@tglx>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <7d6445e9-011f-60ec-0fd0-3c354d507d57@socionext.com>
Date: Wed, 19 Jan 2022 17:45:01 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <87a6fsa935.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Language: en-US
X-Original-Sender: hayashi.kunihiko@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of hayashi.kunihiko@socionext.com designates
 202.248.49.38 as permitted sender) smtp.mailfrom=hayashi.kunihiko@socionext.com
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

Hi Thomas,

On 2022/01/19 8:59, Thomas Gleixner wrote:
> Kunihiko,
> 
> On Wed, Jan 12 2022 at 09:05, Kunihiko Hayashi wrote:
>> Is this fix the same as below?
>> https://marc.info/?l=linux-kernel&m=164061119923119&w=2
> 
> pretty much the same, but I missed that patch. I was off for 2+ weeks
> and on return Boris poked me about this issue and I fixed it. Then I
> went ahead and marked all vacation mail read as I always do :)
> 
> So sorry for not noticing that patch.

No problem. If this issue wansn't resolved, the PCIe controller wouldn't
work properly, so I'm relieved to solve the issue and get your response.

Thank you,

---
Best Regards
Kunihiko Hayashi

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/7d6445e9-011f-60ec-0fd0-3c354d507d57%40socionext.com.
