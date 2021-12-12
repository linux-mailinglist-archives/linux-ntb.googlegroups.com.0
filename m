Return-Path: <linux-ntb+bncBDAMN6NI5EERBRWD3GGQMGQES4BWC7I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C81471D10
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Dec 2021 21:55:34 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id j71-20020a1c234a000000b00342f418ae7csf10586300wmj.1
        for <lists+linux-ntb@lfdr.de>; Sun, 12 Dec 2021 12:55:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639342534; cv=pass;
        d=google.com; s=arc-20160816;
        b=KKXFSFTfe/ksjgqiYn7oLnrW4aA99f7j19c8E+88tAgnG3KCK33i1qu7Cxvn7EtrFa
         dpNUXjAH0rq/asWZs0kztf11ZJVVjZdJj6tVnNhEkh3MCgd57ryqBvGG30o+nAV1hmN6
         R4qRAr/wgIilwJdfGmD+M1aYyGdpTrNRZtRsH+GGuc0NLLuPaFwEBpfqFagKOeeuHwfF
         dJANTNTSeRH6ZxT7ZfsFuqrCL4Q5mzNChzxgC4A0X86NPBiOcag0umjckeAfZurWiJSy
         JUnFrz1IJXcb78Gb903y9IqhK1vMYp/fh7ux9dGAM9/LwxrwxoNbckMkvR6H0etDfaNa
         E7DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=Ma8A7w0ZGV7jav/8OsAfh+FKzG38vfMlaY/dea7E/V8=;
        b=bR5Y3LMe1LiAqVfYpNl+jREvQ+mHLB8SYRDyuHnfP0BJKCFAP3kZZA4ay3UbSFFKi4
         2OJMCZ/FLHRAzym9dpDWCbAfW+V1ICexqJG7Cqoe+BavE7h8F6nqRkRlWDHtmdyIwFx7
         v+DA4HgWjef4KLIlJ91pFFT+NKRl9FXi/jBdeWELdS2ianEx1xsSuNMBPxkmpiSTMMYY
         6h1HQzMx4kxuM2P5luMsbXM4xICbTYf3rGz1vX/MKeB3PhDUINOEoVBhtiu7aR5sHbUf
         rGwYo7QZfFGyeAFeoImDwK1/TxwVCELKBcT759Sv5TTsWbMaIZ2usVpHQeA9DQUCjNgG
         e7pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=LpEiLakm;
       dkim=neutral (no key) header.i=@linutronix.de header.b=bcZqTtGa;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ma8A7w0ZGV7jav/8OsAfh+FKzG38vfMlaY/dea7E/V8=;
        b=mhzC4t+ZGt4AhaZ7UzbZtA+eaYmNuv92AZbwJbEggd7Qycrmd5wB/owD8CthzxaDzk
         AfRHXgtw1m31LnhJVbJRGCuyKFj1cSCazyI/aZNktinbEeUd0LAc/70RPVxfjmbE8kv/
         ak6inJGF7ygtPzlTuSiMwOqU4CBAlzAHGPtpmZxWfteG/pYThSk3s/VSg4uxYMR7nkPL
         qUQ9F8rA1DQymvsDVsApNPWGG+i/sXhIay7TGA2R961d5uwRDc80gm5cpGjTeuwISPnd
         3hPFus82O0ihSoyIZBUoZncd6DID32Whxf3wtjUd1ex3veCWMsQyM/oG9ClgFPQVaaan
         MqFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ma8A7w0ZGV7jav/8OsAfh+FKzG38vfMlaY/dea7E/V8=;
        b=a/0aqO80CkT3Vkk0qJkD1lJrheCLp4yiJR1Fgu8KkKDrl51mMsEEeukm+qOKvpuXZy
         5c77tEsE5iADEIRpGGJLUQhpumneE424dE3vGxXjHfuxiWgLsetD7A2RViLmWb1loniv
         G/amGEUPOYcG3oHY5ANPlA6OJEy4txEDD3Eja4NLSoR6BFP8ften6Cc2JOCBq/dEAQJn
         saJ6z6ZBF1OJPDDYyYNb2D1UYmRy1N4q0reZybQs9R8rhmvHc1wEk91pBtsSTQo24dIZ
         4pUO5cWb1skjyI63daeimJ5kCRnFtbiLrA6TzMAMfnfC4Uj9hVH6k0ZCVwjAFX7faRsZ
         gauQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530y/jCX6U5g55SUE5Es788n3WtxnFThypp8iX5abL9WrJsDk7As
	mZ7U7Q6PHxolUn7edN7nzeY=
X-Google-Smtp-Source: ABdhPJyHnNYVSiBJWh3xvzqjSZCr5ptXxHVgjSz1rylNgMseYPDhUNXuWeMaXdTcL99rcXA26qaqEA==
X-Received: by 2002:a5d:61ca:: with SMTP id q10mr26932689wrv.102.1639342534490;
        Sun, 12 Dec 2021 12:55:34 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f1c2:: with SMTP id z2ls71426wro.2.gmail; Sun, 12 Dec
 2021 12:55:33 -0800 (PST)
X-Received: by 2002:a5d:4443:: with SMTP id x3mr28055708wrr.189.1639342533830;
        Sun, 12 Dec 2021 12:55:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639342533; cv=none;
        d=google.com; s=arc-20160816;
        b=RYtDpR8ITBcoLR+ZGTUMN/KFvBnfy7jpXpqrVTUKPwQH6suRG6ncIAPjs8YIoE8kTp
         Pm8ASV0KVClfi4d2NDioYJXdgjdOkfJxYWEPexSvR0hI49VUSdELyqeCiFgGpVfoDxIU
         UXAcPXVJSsQI5lRQ9UWEll1gY+cAWX1NJ7Hv82r1nWlnbziYm8WpjmkkfuMObIdkxU4l
         4s0taNGRMClk/KcxDNmxfGpHNNlW6hjCnZvWx1QwTGQvLMEQRw5Q8OiJZbQBN6r0/X/M
         iLGs+eA2EUTa42IBK6jOLopCwS/GWVay23VF/FqVwSWsbPGmN/Z8NfUAjZdlzx2MuOeV
         RK+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=X/NAgpabmqU7SvS/VZzGUCF8aINHFotBjDodV/Kfsg4=;
        b=kMbP2ZI7rRkO/K8QTd48uauDNuF225uApIcW+cAOuwqR/Ax+lv7BnIUTrTtMVbabz1
         9d517ZpCw+T+e9gDkwUN6P2Ca+JhcDFG428TXJgQjYgaSF+u27BWSMdUowNsua90rGiS
         +pGIkGQyF52RyQURxOyRydJYHmv/DDEaPk84TlhbWHi/PDZIGLAxkJXBf+e3yZ4VgT7Z
         RB5UOBTcM3vbt1JRBDKF4DmbK6ECFycx7jjx4GO2WNXmvZiRoN4CKlkCs3rT2Nbv8U5f
         7cARnAnLbbDkAMUFd+FS3wbNqFX9Qv+V9fPy5mFTCBNV5z/SBYfXZnNZJoYpXLTUHb6d
         L3+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=LpEiLakm;
       dkim=neutral (no key) header.i=@linutronix.de header.b=bcZqTtGa;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id e2si491057wre.5.2021.12.12.12.55.33
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Dec 2021 12:55:33 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
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
In-Reply-To: <BL1PR11MB5271326D39DAB692F07587768C739@BL1PR11MB5271.namprd11.prod.outlook.com>
References: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com> <87fsr0xp31.ffs@tglx>
 <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <875yrvwavf.ffs@tglx>
 <BL1PR11MB5271326D39DAB692F07587768C739@BL1PR11MB5271.namprd11.prod.outlook.com>
Date: Sun, 12 Dec 2021 21:55:32 +0100
Message-ID: <87fsqxv8zf.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=LpEiLakm;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=bcZqTtGa;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Sun, Dec 12 2021 at 01:56, Kevin Tian wrote:
>> From: Thomas Gleixner <tglx@linutronix.de>
>> All I can find is drivers/iommu/virtio-iommu.c but I can't find anything
>> vIR related there.
>
> Well, virtio-iommu is a para-virtualized vIOMMU implementations.
>
> In reality there are also fully emulated vIOMMU implementations (e.g.
> Qemu fully emulates Intel/AMD/ARM IOMMUs). In those configurations
> the IR logic in existing iommu drivers just apply:
>
> 	drivers/iommu/intel/irq_remapping.c
> 	drivers/iommu/amd/iommu.c

thanks for the explanation. So that's a full IOMMU emulation. I was more
expecting a paravirtualized lightweight one.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87fsqxv8zf.ffs%40tglx.
