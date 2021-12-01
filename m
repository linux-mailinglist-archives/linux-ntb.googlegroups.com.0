Return-Path: <linux-ntb+bncBDAMN6NI5EERBVFUT6GQMGQENPAJ2DY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9C3465714
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 21:25:57 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id x14-20020a627c0e000000b0049473df362dsf15888929pfc.12
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 12:25:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638390356; cv=pass;
        d=google.com; s=arc-20160816;
        b=OqA2vPdCPHf7nH3z68IUYBuBE3U+81TNzBZ9nDYLCM3lXoB8ZZttI97sEYLjNCPGjf
         CVK9KM8zuhb61oLu3PkT2W6+3FansnPkmCuoQiUG4Yq5WGgJgOljaqO5iygjUKOH38j7
         4cYOP2KFPr+zh9OOUCjSidg8kljuS9bNxM4WmYsel/ldmx7FQUNi6wQjGHmyL7V4EwSA
         t2ViYc7CqZHRwopMCJuHetEFAmnA5jmnKwL2fFIRRiU9RHKeQBw3ijbXjk5qC1FXgeCI
         /hJZ/mWn8vaTqAt4DOJvNsLv/Yv/5PiDUmX4F4RqcUN5H9sO2qoQpairaotvCmEY6f+E
         sz2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=p3EwFC4YBKySeRVMwGQDB2W5QlLNfJZbEn2jr/OFzyQ=;
        b=qSW8vRYyvgF4nMPPNztPd1po20/e9otreaNUWY4T5Jdm/WxNFHIQdbkH1KSyIR78xm
         rSiY6uzNoNFZ0+yJC/uhqcJjupDVZxF0WQu6JHFDD2GjdByjlS1zwoxeM9Z7ZZd/0hA4
         oWBWWkslp4ZseeRl3KugS2slnFfOOjyKceUzb7r2nZw8/t8q07IdJCXpoHfWf1zPSCbT
         ajvsly5R5NgkteklOo1B/eCAShp3nQzmKeNkFNkmdPo2cNRF8Z3PIyIp7eV6st+xwWyw
         fWItlrm8QeCof9CSQL40gJI6OlED3DZTQQr9ORfT/cXYG3DQGyVUNCoeg4YTH3k8mzBM
         EmKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=gHLqUfYb;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p3EwFC4YBKySeRVMwGQDB2W5QlLNfJZbEn2jr/OFzyQ=;
        b=LJaH4+P0i7C0zM+jKT2FA1HKrGdPFH2c5pGU5LygLesHlxtRchQmdK0I48q9GhAa8w
         LvYe/RhVhzy+bq2PKy+hyIa9I8+MMjsefH1NkoxGg0ZvUFsmQZNBPlVrelPIemZZl/6R
         QbG7kRaky9V69q7kj2YLZTSKmXD1qllzkw6ld8hsbsF+qlW5zXagEquvFusAbETT5T6P
         p6QZmNRXk4Y8DzoQNivoNwAX8g+IZqLdiTAoezaKmd3NF9/d7LqhfjPLKcUa7lNFH0v4
         YZK3jtN9mjoKVYtDy+lGucc93mUGn3JloX41qipGZLutEk/jV8GoYq7mCYuiVub67sdI
         JIqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p3EwFC4YBKySeRVMwGQDB2W5QlLNfJZbEn2jr/OFzyQ=;
        b=bvzY6kiTTW9TnGylVw0AE27mDuFKBMYoq82FY5wz3CnoDKDJajbdGEby4v3Wauw4QE
         LpQsT7KjhLgZWhtUipUVZ0R/Bex0ymSRW2BQp4Z659Nf2avqcjPSjeFHUoltRAbwjDCg
         gxJDScICebVNRS/rw7UPH8imEV5Cu1PBUXv/b1OieTEPyKXiH9prrMhsfzoR3VQIX3SN
         U6cGn/4KfRP//YeZHwSbPFeUZzyeOk2hv4aoOVJPEKyNM+ojmwF/R5o8KMmze3uF6z3b
         PG8NMqI6+tItHebKz0C3NOV9tp0AMH5oyK7exslZ9dBLN0xlsEQsZlm/HyeP1UT6/E0l
         FmKA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533Fek3yKYBBUB2M0DX3gQEC1fQdCroQ37s1o9FEZ84D4qsZ+tJo
	aYs8pPynOqezHEu11Bu5El4=
X-Google-Smtp-Source: ABdhPJxxijda24kPERHn1zHKiMC0lHu5ZUQ+VHa0ziC9H33UYPEJ5Q8GN5xXTT21zQNVj4s53BWueA==
X-Received: by 2002:a63:110:: with SMTP id 16mr6195739pgb.498.1638390356549;
        Wed, 01 Dec 2021 12:25:56 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:d44c:: with SMTP id i12ls961228pgj.0.gmail; Wed, 01 Dec
 2021 12:25:56 -0800 (PST)
X-Received: by 2002:a62:3888:0:b0:4a9:5e0e:8b99 with SMTP id f130-20020a623888000000b004a95e0e8b99mr3094860pfa.30.1638390356011;
        Wed, 01 Dec 2021 12:25:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638390356; cv=none;
        d=google.com; s=arc-20160816;
        b=xRjprNK0HEwxU21KFGpWuAuCzo8xzMrnBuARFSBuL/n5LUtaw1HyAAysECaggeZRP2
         wqLct5dIMtbox6RAT+oHlM7FVJQ8YwIxVO3Ey9u8xZy26mgOTSDsTpJQmPmTFEpElMPb
         FE5lrKqiMLNSBHBozFsA0KhAcvy/dXkzfXlDJal98GBBwpMW8If/hWm+Fma0KomfMlPx
         lE3tidU/N6+O2KvAxBIoSi9WYJ4j2K1f5IS0gGGBZ/2C1j4oHo3btvjE7qLTzaRFBOk4
         U/FNZ58MCx+JJctWcI5W0quW7HENTcVDJb7bJbI1E5h8zwMrzecQex/h7vTn4OXwud/T
         wGDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=rILGDyAzrwQH4d0Fd/HHcQkOPeMa8khVt+2HdznW01Q=;
        b=dEhEMTb649j6e/Sl/B7ZmEHlp11nmfCBu+1yLxW0+WmN7J/mKmKy+6yiRyjbLqjYLK
         PO/ELDdMob4/RT22p+fWbKpBk63R6YpMty5Sf0usJGXKFUaOM8QnX1CW7jZJn/nmNrel
         0AKxC6bRofaqKijd1E9f+5QBz2mdg9stMh1FyxtLdgVyd5Dx0qv0AomQXOVGhKxa2rXG
         VBgQRPAryCkzD/6qQ6vyKSaELy0tXCFJeKmrC1yNR+cc92aoZpqFp3nonXj9f6xd/lwG
         qmtxvWXRAehFls3BFt5gNsQuR72+gfpwjuQuxbPveISTslYCup7cvB+b5IMHh/AqQVz5
         0CqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=gHLqUfYb;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id na11si1266093pjb.2.2021.12.01.12.25.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 12:25:55 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Dave Jiang <dave.jiang@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
Cc: Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Marc
 Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>, Ashok
 Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, Allen Hubbe
 <allenbh@gmail.com>, linux-ntb@googlegroups.com,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, Christian
 Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org, Joerg Roedel
 <jroedel@suse.de>, iommu@lists.linux-foundation.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com> <87o861banv.ffs@tglx>
 <20211201001748.GF4670@nvidia.com> <87mtlkaauo.ffs@tglx>
 <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com> <87pmqg88xq.ffs@tglx>
 <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com>
Date: Wed, 01 Dec 2021 21:25:53 +0100
Message-ID: <87k0go8432.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=gHLqUfYb;       dkim=neutral
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

On Wed, Dec 01 2021 at 11:47, Dave Jiang wrote:
> On 12/1/2021 11:41 AM, Thomas Gleixner wrote:
>>> Hi Thomas. This is actually the IDXD usage for a mediated device passed
>>> to a guest kernel when we plumb the pass through of IMS to the guest
>>> rather than doing previous implementation of having a MSIX vector on
>>> guest backed by IMS.
>> Which makes a lot of sense.
>>
>>> The control block for the mediated device is emulated and therefore an
>>> emulated MSIX vector will be surfaced as vector 0. However the queues
>>> will backed by IMS vectors. So we end up needing MSIX and IMS coexist
>>> running on the guest kernel for the same device.
>> Why? What's wrong with using straight MSI-X for all of them?
>
> The hardware implementation does not have enough MSIX vectors for 
> guests. There are only 9 MSIX vectors total (8 for queues) and 2048 IMS 
> vectors. So if we are to do MSI-X for all of them, then we need to do 
> the IMS backed MSIX scheme rather than passthrough IMS to guests.

Confused. Are you talking about passing a full IDXD device to the guest
or about passing a carved out subdevice, aka. queue?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87k0go8432.ffs%40tglx.
