Return-Path: <linux-ntb+bncBDAMN6NI5EERBI6B3GGQMGQEGH256MY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 419FC471D0A
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Dec 2021 21:50:44 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id l6-20020a05600c4f0600b0033321934a39sf5768069wmq.9
        for <lists+linux-ntb@lfdr.de>; Sun, 12 Dec 2021 12:50:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639342244; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qts1Isa9QjmBEWaGVYk3oiaJ4Lphy4hEu33p9BoscmHpoOe3adsxfFTWCpvg3DzV2B
         qSOZaqOBZxixUIPgv8ZnNb5Vr9UHDRwy38PzAyuZaOByCEp0PUrjT4VxENTR5G7e2YhK
         zwQg+ijs/MCW9hlz1xtXU1kbaHbRKpuME2276R8bGMTRcRCkJCG+LbQyPZ9uU/fcYRio
         mrSPcevyDv+D671fye/OEfSmIcH8WhHeo+QeWRo/6U3boEBYoY+MerlwCe7EEfaT3INK
         +IrhFmJz92bwBxP6rYav6wIk0MFCegYMXQtaKZjBb0O9gsukqzW2HyEh6+I4v53p9r9x
         eAdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=zKXtik8idpQvWxwMhTD6O6MqGNsDzbNxwnQmIacLFLg=;
        b=f/1X6cqy2jp4fJUzZbiNtzPHcS3DbIIYD3dXaFqF51V0LE7IgGkbhRWFXZaxyubpio
         JQjPJwSqkNTH+/pkRfVzw+kOXruGPR4QjumeN61aP0cc2VsOx6byXDuH+RlTnn2O8OCV
         s2qpkURwXZp5xmAVjUGPLesphjRJGDQOIoPiSaRzdFSvLCjNW4omsgWsFt63JmCNtaN+
         UUJ2jL141WaV0BaX4hwpRync06WQupY4A/7RqHompdNpXf57Ml0NPTdw1vGQ/dG0RPPg
         ZAtWIpe+aXBlftptRuQffrsdAqlFZuLBAW0d4P9cDE4xjiBKxzIJGdOb1pgF+nE8hvMI
         blXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=oLGM0fJW;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zKXtik8idpQvWxwMhTD6O6MqGNsDzbNxwnQmIacLFLg=;
        b=kxr7sptOJHUX2jTlrOA1TPwSoMeHV6m64azld+3iOxDLkf86HvaRCzS6QsJwSW0dD+
         l+s54bFv0bzitfMXWH7jyIOrgjO8YLusHIWd7Irl6kMJo7z3UpkzpMWOyrj8XaUIuJv1
         PhXiqzoMtxx802oATIKRW+9vo6NTI02E5FWShkWF/60/Fc5v0Q3NFjiMLH75ZdWCewBc
         UmsORgb1Voa9rEMl9xcisEiZxVAMo5BIZT0FQBa8OwH9X+QA2kox2pUC5JNgKqzGkJqN
         Z/xJcsvrDhKd4zV2whB1yLVOE4n3aS3FaukqwtC8TCVUTzu+r9VDhPVIvMIJEjsJ1eaN
         WYog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zKXtik8idpQvWxwMhTD6O6MqGNsDzbNxwnQmIacLFLg=;
        b=belmuU9I2fQ3+sd7ZZ12CkzoAaf+0VbTnf/1VoDM29FrypGVE1xAIa8IftrpjsfciC
         Xlb1VUYpa8Id9KUhw/O0m03vH/JZ5OVfEPA2c4Sx9t5fGfpilaKjIvXrHnqDvV5VvXYH
         k9hp5qJ8n4h/5bEhqZSZE3TQVmaCZmgRekugfzqDu2q/XNI+Q5kG8NDH5Bc5DqW9xT3Y
         iJAQSL1PvvJJnXPyszKUdo/K6kKH7Q+JTk+eKqq+GgAGhTAQOB1dzk+xnwn7imyYisFM
         3yU5+NGfXtVbt9pNpimid5EnIaQ0xWCY6v7LZE4WErx7djfy7A8wE+W5TOISLSb/G7NC
         4x/A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533j7pthTiT5YpqNJP/RVFVWElNweftt4TRXvSjSptxsozmjjHMM
	d05FHMc55xxHjF7uX8tlNa8=
X-Google-Smtp-Source: ABdhPJxy75iZ+xXmAhM3LodfmSoEcdHFUC8FX3AAMN3T1ZVKzNUapENyrnHOZiAvvnyvTmUEnUvNhQ==
X-Received: by 2002:a5d:58ed:: with SMTP id f13mr27512643wrd.373.1639342243876;
        Sun, 12 Dec 2021 12:50:43 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f1c2:: with SMTP id z2ls63945wro.2.gmail; Sun, 12 Dec
 2021 12:50:42 -0800 (PST)
X-Received: by 2002:a5d:68cb:: with SMTP id p11mr27688816wrw.262.1639342242909;
        Sun, 12 Dec 2021 12:50:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639342242; cv=none;
        d=google.com; s=arc-20160816;
        b=vDQ+MhLfYyuR7wpXyO9BlizRNQxaIH5XdQF6jmDPWmbl5FPEdFA3gEFdcM3Bqe7NUz
         Apl/VdUf8GHorJwSsIfIgoHC97vB5rnFe+68dJrMhsNebnUJ4gxdtTTG77wm17XBPam+
         44Z+e1XXzChaibpirWh47BbpGikz0/dLRp5ecwP8uymYmS8XC46mBApT0rULIjvYt7HL
         GIwNjnCf3ivkkq8z/Rp7tyovVRfYcaJxGBswpf9RFXrWYf608oQgFc0cSDQF7IreTr7+
         8SkCOlcXKUxweQrvhaY63/3C0vU6LnuXc9MoIwMWb/dbNbVhK19rW/VJ5zvW3UUl3GA1
         Ijsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=w3giibguzthIGHYHZS8eAHBYfn6QZq1ks3+DemGTi2A=;
        b=eDMYKBctUzVRelsgFFs8LPM2plisA0CMNRxLUxB29skiyswtKp1PsTsjbyLV+QrkGf
         0iVEpR/S+M5nuKW8XM8hoRdp8f3mlMMOT583Uqflk7ZjptaPkr9Ka7vRuSEmjG6c1Q2v
         0DQKxRJaDKtCyCgJQ/qWYkp0jbHVzIumF6fc5DBSukLaPVXrszPYzlbeNl7QISlFjsE7
         k24deBaDws4Zjh6KLzrzjj8DtK2/Z1kLbSARUVXoTht9ghdTrk+hOlJyDcg48uKXM0Ou
         QOXPguLxy5fEl2Yc3zcW3nOfYvVqsUG9hVLc4ugpdhoys2bluaY7ma6Zatw5uVpNBzHP
         Z91A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=oLGM0fJW;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id a1si426458wrv.4.2021.12.12.12.50.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Dec 2021 12:50:42 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: "Tian, Kevin" <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
Cc: "Jiang, Dave" <dave.jiang@intel.com>, Logan Gunthorpe
 <logang@deltatee.com>, LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas
 <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex Williamson
 <alex.williamson@redhat.com>, "Dey, Megha" <megha.dey@intel.com>, "Raj,
 Ashok" <ashok.raj@intel.com>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, Allen Hubbe
 <allenbh@gmail.com>, "linux-ntb@googlegroups.com"
 <linux-ntb@googlegroups.com>, "linux-s390@vger.kernel.org"
 <linux-s390@vger.kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, "x86@kernel.org"
 <x86@kernel.org>, "Rodel, Jorg" <jroedel@suse.de>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: RE: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <BL1PR11MB5271BFC6B2218CF7E9151EE88C739@BL1PR11MB5271.namprd11.prod.outlook.com>
References: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com>
 <BN9PR11MB5276B2584F928B4BFD4573428C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87lf0qvfze.ffs@tglx>
 <BL1PR11MB5271BFC6B2218CF7E9151EE88C739@BL1PR11MB5271.namprd11.prod.outlook.com>
Date: Sun, 12 Dec 2021 21:50:41 +0100
Message-ID: <87ilvtv97i.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=oLGM0fJW;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

Kevin,

On Sun, Dec 12 2021 at 02:14, Kevin Tian wrote:
>> From: Thomas Gleixner <tglx@linutronix.de>
> I just continue the thought practice along that direction to see what
> the host flow will be like (step by step). Looking at the current 
> implementation is just one necessary step in my thought practice to 
> help refine the picture. When I found something which may be 
> worth being aligned then I shared to avoid follow a wrong direction 
> too far.
>
> If both of your think it simply adds noise to this discussion, I can
> surely hold back and focus on 'concept' only.

All good. We _want_ your participartion for sure. Comparing and
contrasting it to the existing flow is fine.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87ilvtv97i.ffs%40tglx.
