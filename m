Return-Path: <linux-ntb+bncBDAMN6NI5EERBON7Z77AKGQEWWOFQKY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 023E32D8067
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 22:08:10 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id v5sf3795690wrr.0
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 13:08:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607720889; cv=pass;
        d=google.com; s=arc-20160816;
        b=ndkisjPYxZGRiJnC2vBGozzRJNyL43ZaxRjkMgpolHxQbr1PCVAMplBprik5AJj29i
         8Fe9LqGmvnSQyCS6HzXYY1LQYgTuun/syrfJzqc4Lf1SxxcldDUbg5VB3AGIDJ0NrQfg
         6Y66RVl8iHPBPYmbJ+ChwOMOw7J69+d3swF/gQys0ChKs0JvGXNsN+5iKKZ8Ycs+I8f7
         lI+qNneernRuhNYw6uE12Dvu4qc+wnqNj6MaOTc0XVxJRdx2jcpal0pUXiCdAro0Rn9Y
         BQ4QarmEjZtzKMir90A173Yo7rcmG22EB5tqSVvtrYlW3+GK8hwJKPtZ7F3Rs9MLQVKg
         rSkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=GzzWtoom2yNmbuVNyebDcyIS9PWlJqnPDXdWfDGMvic=;
        b=KaC9rel3HmxGxagrkG2Qp1mnj8tWp2sK5Y8JqKsWpJW/cIxeyfKvlyuYdVdIDAbmRC
         xBp74bC20h8Qvjr+MLqwJ1aelABfcsxvxQTtwYngNNzFzki3Pfx+vIA5ybubeArt+DhK
         kP9cl/eM73U1KaHGp8+UR/pJtIaMXneMFdyo/mN3SbIoRTSTO9sWc+IQOQZiyqgxhB9M
         x7Da3bm8jK1zxhAHnxoTwH+yypc3O0zFSciwWbl0RxtAcX0Ayi9dL+/UCBu6FUqrrdlb
         6HJkvngaQMYjXHPAbS30B7rEHXstX3nCjMzQNNPmxW8RXz6HOSLArZgoDBRJ/0uNPUAL
         mGbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ODjND6hv;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=jd0RTQzt;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GzzWtoom2yNmbuVNyebDcyIS9PWlJqnPDXdWfDGMvic=;
        b=esm61pYtJ/EcsTiid7xJrhJPDRqk0OZThW0wgTvm02rPHJzWVRN65CesmzruQwJReQ
         qZ8FeeyB8zusYLiSZjfamcXCAKt+hjrzJmkX26VIu0bOce9QwWJWESb19ikUqmbKAUlM
         oZF9Sy4x3ArQ8xB3GPxVXI1MBT2IEjoNpLd1v4DsnW/pExgIbswBNNbqLLSI83jOEAEJ
         82fFnDT9+tX9d9mK6uZt/gmTA7S8P40WlTFygVzixbv1nv+kiajFYlPJlquzN9ZdqvBN
         20DZ/2b+Jx+WHlhQ070Xq52FO/7dkpITX6AlDBoriD+Bb4ejIDF2YZYC1n6yytpvKz+g
         h90w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GzzWtoom2yNmbuVNyebDcyIS9PWlJqnPDXdWfDGMvic=;
        b=mwUkAIiXL4GMaQCpQdelGLdQkx5VWeBY6HC151XdFp83gbdFNEteQ+oXRGYb4kPaCx
         jMv29Mk35B5tlr0ibhvjHUTCemQz3fvCkT+gOfDKw9NnrIMPboIPF7FwNLDyB3ncmc8r
         n11vFikCZJPJtf6nx9kPEiZLx/ud6JFAnTW6gT59tL8aWfcTOWuYFBV1B4ye3ZcKpmCb
         hw7OEUoL2eLaq1XOF7n8MjTVAP/t+4II21Ywskeu+SzIT9C200MvegU9WLZo2c2K012V
         e9/dsmOMvq85TJ4IsuOuip7NKQ505X79iMbfWiv0wnoaH/e9Z2gVly7YxgW8eScCuVsG
         oWZA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5318x+DSI0k61xJksMA2ydbfGRrwjirjJjs4OfAcxrK0JWVH1hCD
	P9CnfkeUiZ4tNXAVs95/7xc=
X-Google-Smtp-Source: ABdhPJyysGdefj9ivFI8FwkiS/B0oamqujpTrXWSHS+5/yPaewr8OZDMb0PFSrBycmiYMJUZTFJB7g==
X-Received: by 2002:a05:600c:211:: with SMTP id 17mr15481447wmi.84.1607720889662;
        Fri, 11 Dec 2020 13:08:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls4879720wrw.0.gmail; Fri, 11 Dec
 2020 13:08:08 -0800 (PST)
X-Received: by 2002:adf:fb88:: with SMTP id a8mr15988776wrr.412.1607720888849;
        Fri, 11 Dec 2020 13:08:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607720888; cv=none;
        d=google.com; s=arc-20160816;
        b=cm0FmZWXSVeUnlOlGfb0NJAOY8AMryT2KvFhcpf1FR5ZeSvXEUTwdw8kttbPpoAWny
         lBEKoMqH3mBMJcS7UOQXW/xZj/UgPvDYQEx3U5bf6q2dt7asgLgDzdrdURRxZgfTu61J
         EcY4GdsXV6AQwZe4Qj2AWWP/iIBiyhGTXFFRGYkskmcklynOPQ3rauSCB98xRzLr+1ze
         H5uA8HtuU80dgzah/eLJkD+PYOhY7xe3pAWoaMtkV+yOf+vD1b8gJNsEfcgRjF0rkWV7
         ceZl9USPTa9VLaX7LecDNee3y4SiWF7jSKIP/NE2+8EW55Ujtk/Pq8mH4XXkIpvkSTY7
         ZR0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=HhSZk3JoDjyQOLMPOFgRgzwUyrTACu0UGSGM/7NvY6I=;
        b=JfgCnyrjfHfMz144htlCs02H0Bh8ScK+OuAXnbNfAnwpcnJMHzyG0FAiHttbR7g5yj
         D7GO8kfUC7tV+oODQsXzGLkQyQ8QeegnLdjj820RPhatvB40eGYjQQipHrYlxTdNqQEg
         dgwi1IhXUbZmGLu4JZpPcAFhXCP98GYvo9qOMmhcpYXxdtzpiv9BXyG3fZua7WodImlm
         IdKqvao1p7qdAgi1hjUZ2NDW+albTF9cpqrsyDdYsJeoCN5ogl+Qc170Us4H9nQdR4xN
         X5/25ihp2400vxbvq+tyGKhJ1XPc22KdvXIeDCFN7u0RkxX2ku+PBdIig/digBvyQjLS
         XbUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ODjND6hv;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=jd0RTQzt;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id x12si436806wmk.1.2020.12.11.13.08.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 13:08:08 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>, "James E.J.
 Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller
 <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>, Mark
 Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Christian Borntraeger
 <borntraeger@de.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 linux-s390@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Pankaj Bharadiya
 <pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, dri-devel
 <dri-devel@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Linus Walleij
 <linus.walleij@linaro.org>, "open list\:GPIO SUBSYSTEM"
 <linux-gpio@vger.kernel.org>, Lee Jones <lee.jones@linaro.org>, Jon Mason
 <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
 <allenbh@gmail.com>, linux-ntb@googlegroups.com, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Michal Simek <michal.simek@xilinx.com>, linux-pci
 <linux-pci@vger.kernel.org>, Karthikeyan Mitran
 <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq
 Toukan <tariqt@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Jakub
 Kicinski <kuba@kernel.org>, netdev <netdev@vger.kernel.org>, "open
 list\:HFI1 DRIVER" <linux-rdma@vger.kernel.org>, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Boris Ostrovsky
 <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, Stefano
 Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org
Subject: Re: [patch 03/30] genirq: Move irq_set_lockdep_class() to core
In-Reply-To: <CAHp75Vc-2OjE2uwvNRiyLMQ8GSN3P7SehKD-yf229_7ocaktiw@mail.gmail.com>
References: <20201210192536.118432146@linutronix.de> <20201210194042.860029489@linutronix.de> <CAHp75Vc-2OjE2uwvNRiyLMQ8GSN3P7SehKD-yf229_7ocaktiw@mail.gmail.com>
Date: Fri, 11 Dec 2020 22:08:07 +0100
Message-ID: <87h7osgifc.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=ODjND6hv;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=jd0RTQzt;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Fri, Dec 11 2020 at 19:53, Andy Shevchenko wrote:

> On Thu, Dec 10, 2020 at 10:14 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>>
>> irq_set_lockdep_class() is used from modules and requires irq_to_desc() to
>> be exported. Move it into the core code which lifts another requirement for
>> the export.
>
> ...
>
>> +       if (IS_ENABLED(CONFIG_LOCKDEP))
>> +               __irq_set_lockdep_class(irq, lock_class, request_class);

You are right. Let me fix that.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87h7osgifc.fsf%40nanos.tec.linutronix.de.
