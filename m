Return-Path: <linux-ntb+bncBDAMN6NI5EERBREDT6GQMGQESBAGIAQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 787124655B0
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 19:41:09 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id c15-20020a4a87cf000000b002caccd96998sf5544118ooi.10
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 10:41:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638384068; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/x8ezjykc5i+O24+P7zVXIaCeJRxJv24Lns7xcx07dTkOcOUUm0O6meVZhXBZF+sm
         poTxRTZu/lAeNwLl56+VFgSmRUnuVPANHuNeAni0dm2WOzMuB8/DwgAQFqSUz8ocZ0wZ
         37GExhtxojpChYcmA4KRaXIeKD1amuT/IWJR3JdEMC7zmalKu50iaLuj6q2+zWkO2JO5
         IpwxO3Rghx860BipqiCgHXG8yqTENYERlosQG3CUMPhHxhMyOcjWK098pisbnwgJe+nC
         2R8MXZPnacDFTi2iFHdgMBOIcaa/RgzSwsZPQDQJo0NoZmMOjnyADU4obe5pZmQpTOJB
         rfXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=F1GARuo8ZZW5SmrtHSwRPgNw0/TRWBh2bWrXLJ+3ZpU=;
        b=WThlxUC6tq63EVtE4UXT6tj2pecEDfZTUIbzeYrIt9Ik6qVpBRfM7kL0JJCL/om5x2
         8D6Z/Y3LaiAoNUa7TC4BtGO6k1oEjBZ3Th4TwLe20I88vGl7bbxxqbpKLgvu0UB7hb8c
         JemOKxB56hvoinMPC3HGh5EmCbAFIXP2t0luSTccG4woJl3hE7AIMPKAypUh5ZCvQU0c
         507nMD58pNwmCvNRg/sB7nCsCxGNEpisTVW0zPfSkigCKYVowUIaUW4/7GAYSWpflCle
         HutooMsI0VNWInvmkW9N318GEuUt+tuUz5j+O8EU6xGYpf3I7/48UMfDxifuuhdbqSvo
         wgLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=agHzhYjA;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=TUbiaXym;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F1GARuo8ZZW5SmrtHSwRPgNw0/TRWBh2bWrXLJ+3ZpU=;
        b=UQoXd8RBtc35YIgikCnXiIYLTsp9+BROShK5J6jNm43nCzzxkYzrN+HF0XmotfcUJV
         QZed51WOOahp3qBJx/SzkOTN276C2xmolZpNjrykq4+XISvZlTjIy6Dhg36WAhV8hgp0
         pCuTR81BxU+pDh7OBCae9CfGPI0nPbuoo8Fk4T/X+0HvTw5WXF+A1DBALQtqmx/Q7gaw
         NFQFcq8d5DXzXJtrXi74KZZb4Gf2LJvddnW4PfNnMXmy36pOeDn1AAgLnPVdBPRXin98
         1IsY46Y0GUptVLoX+4VD2QYP+CcFUmWUTH+292tiNUTOoqLbnUqBJq4PMvKHnxbkugIw
         puag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F1GARuo8ZZW5SmrtHSwRPgNw0/TRWBh2bWrXLJ+3ZpU=;
        b=IXSUp+s4rL9DHCmhrPC4I6LIrrhnaB37QRbvuQWMpn8FF7Obzt9XKeNXrGZ8QvS6LE
         yy/1UYWcrKRKLY+cWhuus5vY3KrCs2vnyRFyh9ACz5HVYxp+IylKXLo0DSFKTEmUy0U+
         hDqn9yJGlxnjJlTwhkJK83GpiJ4ERSXLyYLhxyXKFQwtfpb4RoENbOeyjrpK4lq3IIjA
         iVJDiwfiaWk5viSBIPmrCmQb/ao0SehFQaMCmxncjKrXlIA/iifcv/ugMH1yVkNgbdIv
         M89WHQwRSVbpThhnvW6qBJVnKPJtcigLrNUCujyLEjZ6TMKhNGWoefBWFvhf27YlMJFf
         /P9g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531ORNxvzKy/PmZSeyqDo/6HxDLF7VlinINbpA0qAqjqbmKz+XfQ
	mdZNbM3Eolq6mj1joM07kAw=
X-Google-Smtp-Source: ABdhPJz13ZLp4CAEXne0Y4Yo0SwLeyLj6pEvRHIbnvY8gu1yIaf3EPFnRiHSTFdwm8NF/6yQmL6LRw==
X-Received: by 2002:a4a:af46:: with SMTP id x6mr5472365oon.48.1638384068149;
        Wed, 01 Dec 2021 10:41:08 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:19a5:: with SMTP id bj37ls1330047oib.0.gmail; Wed,
 01 Dec 2021 10:41:07 -0800 (PST)
X-Received: by 2002:a05:6808:1642:: with SMTP id az2mr7826186oib.179.1638384067845;
        Wed, 01 Dec 2021 10:41:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638384067; cv=none;
        d=google.com; s=arc-20160816;
        b=P1YCg9A1X7mBDGOX2f/fGyMIGqQoHGXRL9WA+LXRmS1sgtbKQ220wi5RovYqTALI1k
         o53zDU2wO+92FXTkaleVF2/RXkaJUIdy+K+hIgbb/la4YLExHkc4dV3Z1eLugQ9oKoR4
         bNuMg02Oqey/bk0JvtCRTwfKa3SzqUqaS7xqz7iFpBusUWM/MFMpuDjbEfvqUTYghPdZ
         OMzPQA0XP6jhO+D6yDYsPBVeqjppdqcdJD3y3CoQeSpzR5vT/Ram7mbzroOtxAZ08njX
         570UzyYAivys/PHZ8PBFuz33fc+hgHkCsHDjAP9x/9EojJbSIZ+h9QdXsA5Wi1DjJhEI
         Lf9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=bhEQ++VjG+PbbDX/TL/y2PNwVGcmNGkMLPfFWSCRFRg=;
        b=Aj1GFJNCHAh5XPjqdG5w+VvkSKGgalyUd1vVW2++kUhGBM6SwuY65Ej16mBUQeLgY6
         zZ7ZOuLYSv8qC4hdA8VVYDJ25pQiwoEi9Au/9i5SfQJgPBmMplTJ+JE7Akwo0lLrD+Wk
         +XOn5V0WJLX6N8bFTcqLJU0Ll5QEBhGjs3gaJP6QJE2XpocJTp4xrKkrLNWqVZEJBGoQ
         1Rr1Cd9KCLnPpE7g0L4Bdc/1/MFO5Dld3JMCf8X/del9hTUvOnW/6rMWABr7Z5UfJXxO
         aGN6oCTC43ossS1FQhrQeB8urLcwqOSpYEK5WR6tItqaYfkzX+JbeMhSOFyl8hqMsV3N
         vtrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=agHzhYjA;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=TUbiaXym;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id g64si123231oia.1.2021.12.01.10.41.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 10:41:07 -0800 (PST)
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
In-Reply-To: <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com> <87o861banv.ffs@tglx>
 <20211201001748.GF4670@nvidia.com> <87mtlkaauo.ffs@tglx>
 <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com>
Date: Wed, 01 Dec 2021 19:41:05 +0100
Message-ID: <87pmqg88xq.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=agHzhYjA;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=TUbiaXym;
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

Dave,

please trim your replies.

On Wed, Dec 01 2021 at 09:28, Dave Jiang wrote:

> On 12/1/2021 3:16 AM, Thomas Gleixner wrote:
>> Jason,
>>
>> CC+ IOMMU folks
>>
>> On Tue, Nov 30 2021 at 20:17, Jason Gunthorpe wrote:
>>> On Tue, Nov 30, 2021 at 10:23:16PM +0100, Thomas Gleixner wrote:
>>
>> Though I fear there is also a use case for MSI-X and IMS tied to the
>> same device. That network card you are talking about might end up using
>> MSI-X for a control block and then IMS for the actual network queues
>> when it is used as physical function device as a whole, but that's
>> conceptually a different case.
>
> Hi Thomas. This is actually the IDXD usage for a mediated device passed 
> to a guest kernel when we plumb the pass through of IMS to the guest 
> rather than doing previous implementation of having a MSIX vector on 
> guest backed by IMS.

Which makes a lot of sense.

> The control block for the mediated device is emulated and therefore an
> emulated MSIX vector will be surfaced as vector 0. However the queues
> will backed by IMS vectors. So we end up needing MSIX and IMS coexist
> running on the guest kernel for the same device.

Why? What's wrong with using straight MSI-X for all of them?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87pmqg88xq.ffs%40tglx.
