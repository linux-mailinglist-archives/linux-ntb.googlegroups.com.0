Return-Path: <linux-ntb+bncBDAMN6NI5EERBUOZT6GQMGQEZHUVEUQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A63E465883
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 22:44:51 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id u14-20020a05622a198e00b002b2f35a6dcfsf33968453qtc.21
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 13:44:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638395090; cv=pass;
        d=google.com; s=arc-20160816;
        b=gQRtEreOp8z9KMhHxUKCEZR8R0qjfVnGsR/Ts49+dsKsYk2iBx579g/LGPB8Vk8psG
         zFSPzAVDhpivnc9GTKumsV07sTy7Xk7wJXkm4Z5+VHU5oeZKz/csl4GuQwa9ygI94YsC
         xNiWenuABlOUnD0lGKYwrzefedGsOQ+9xOvqq9j23vcy5csXvhIkPqcMMqPeQWqBN7lQ
         aF23C+CmqSqlHKlAIVpcbiBk/goaruI31fe/Ud3mVJyam0DHnZzGnqOGXY+8VdMihppM
         BOSE+eRabeLO15cYUKIaKNiXXZ1OqCUqcZitzUFBkTPK9m+dKTGnAuvpJjVRZAXMcGKA
         STIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=h+OJHkA57AuFAwKmd5BWnKLgjQ0jmVSz+ko3Zdaif0s=;
        b=R8hW5niP0U1c7e2uP6ElrqwaRvvHHHJDAWm5ePXcAXWq7mKR9dutq8uJYahgCZpzmD
         R4AXVlrYsgRYd3nMmPTPcqX1+tlpa0Bi9no3Fy46OpL5NzOjbf2IWdcXJ/MGFIHGAcqN
         V+/Nz4sGbwbHROYjDQYWSNABGPMhrh40pGMEBkZPlpbFM8fFrBC4GX89/MBhzCYb6yK/
         gsNIrsjsEL/w4c0Mq6AX3ZJpC4bLND/kFg9fSN4mIXsa9AyEfPCrvsllLcXazUIbO/tZ
         tyAytEqN3hf4ldG7u9CZgZoepdUAc7kDWzDbdXPVM03uX83CilPB2P6s6uePiznQttQo
         R44Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=c9AgdUMR;
       dkim=neutral (no key) header.i=@linutronix.de header.b=D4Dq7GfJ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h+OJHkA57AuFAwKmd5BWnKLgjQ0jmVSz+ko3Zdaif0s=;
        b=WKKf4doKZAtxYuKQ1YonGBy13hUxit4OWXwmVmmt9Vl39MeOGWFfq2h5rf0b+ZjuLD
         /yvaJvw41aXMYc1kn9nH/z/e6ToJfr6qXEA94CZdTi0rLjOTshNQ6nPB95EiNGGTquVM
         bWVV3R0My0dLmlSkiouc4pJGtK6Mvy+YCC6FTJcYjf7uP1a05VcmdzRyF49fa5dj1npe
         vTZYXEZ5QMhFoGOz5JXlwtRHimHYIMk/Il65TCho7VojFC8I+SvyijiHMwTJuHIkB61A
         vJ+xkByHwRLdVooDxP0/8VVnALWCPYo6UxKbCB+CEC/43mO0KeOuY5RFA5Xfgj822fg6
         ABvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h+OJHkA57AuFAwKmd5BWnKLgjQ0jmVSz+ko3Zdaif0s=;
        b=cbeftYoORw7Ld081WBlM2V1ovI80Ov7b56Zg8xBD5SzEIYEa/vKfF5arDQqorapSfB
         Fq96sMqPkjrsqY5i7MNJ24um2vnrAlaxhU+bLwd321JGKpTSoARIqT60xN5HrrKBpIeZ
         JjYc0OMOhgYqU4txcuYkm5Rt16K4uIj9V5dWRIbobeaKMQB+jfTsyCe8VF11I4ofVc0o
         rVA7VAZk/eO9vDbCTBMwAAAwWGJrMtk1idjHs8FqDy/jsBz08gpog7dZT4uJjAGPxgDR
         XIfH5VCvTfz6gv2l9lcRR2Kok8rVofPpWepLOfmckki/clJFmvQ+m6FgsJwpqlF/ArY0
         ye1A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532RcW588fFSgTbCtl2njPKW17OdW56HCwUyV61DZR7IyxrdKls9
	Q4WA3KdR1Htf4F+fmol4YBo=
X-Google-Smtp-Source: ABdhPJzZYWKWz6D2k8S7CoawN5ElSyc3f0gqipQut46rD/3ZdhByuKFDZ3SItwOQsORmOAnZYFj7EQ==
X-Received: by 2002:a37:a790:: with SMTP id q138mr8580331qke.405.1638395090003;
        Wed, 01 Dec 2021 13:44:50 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:e34c:: with SMTP id a12ls1744548qvm.2.gmail; Wed, 01 Dec
 2021 13:44:49 -0800 (PST)
X-Received: by 2002:a05:6214:2345:: with SMTP id hu5mr9134824qvb.76.1638395089596;
        Wed, 01 Dec 2021 13:44:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638395089; cv=none;
        d=google.com; s=arc-20160816;
        b=DeWjo5T6H+cBkgl7tV4G6puiONPZM/sAxDHqwINCGLH9tFKGsknBfmkYAC7XDIaaeM
         aDSRsLxoAIAChbKAjNYu1Dllgs6PkQiry+4OQqbaMVHK+uFSp3bBOJvIR3L+eOK3BddK
         fDzyPN1sR21xaQLfKSzZl/Nl3XltSj5E+W/FkjqPy5kndRzNfj+C61zcMWxvpRs4xNtF
         q88vQMjU/o9sAElRzPiKfu2AFyDpf0fNvjksexRxKfu5DFz8deCovZ3WpeubCsI//m0w
         u4HrTXjMQJBDs++wYo/bWPn84UDbN73hOmWNlJdU70PPQSIzfb/eVjqp8b7QOvOpHX24
         Wnig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=krYS43JDn9SwhYUn0VmJxoA+3m1JcN43I7KNWxc/6KA=;
        b=sQlbbjw9DAMfM7IMRPPZYfz2bR5Yo2K8rXb81ltZe5Gnvehahm6GUWmYl3N1mJbBxX
         MYpZrqISDOcBbvAyzZwP+ENArgzoRkFpolBmPOm4gtBxDaF04OA4uN6gG2Z8Y4g2jHjV
         hZHcPSLAvdgckn+4Oz4SYIn7v7mD38L8y07EqhNQ1Rb2tS2NwfpJQVsUAP5IIGO5VzZI
         5Vbyv6MIEFIlrBbrFrL/IsWOIUUUxpGIDXmOcPkGDAygDZpgQ+PnDM5/AVueJn3nRtL5
         r3qWEI6WY65rNuvEQVI3o9Zw0eK+2YpYPVgcZXRNXlIEudd/vYsEGUjthnBGlyMD6//6
         2Y8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=c9AgdUMR;
       dkim=neutral (no key) header.i=@linutronix.de header.b=D4Dq7GfJ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id f38si221615qtb.3.2021.12.01.13.44.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 13:44:49 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
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
In-Reply-To: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com> <87o861banv.ffs@tglx>
 <20211201001748.GF4670@nvidia.com> <87mtlkaauo.ffs@tglx>
 <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com> <87pmqg88xq.ffs@tglx>
 <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com> <87k0go8432.ffs@tglx>
 <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
Date: Wed, 01 Dec 2021 22:44:47 +0100
Message-ID: <878rx480fk.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=c9AgdUMR;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=D4Dq7GfJ;       spf=pass
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

On Wed, Dec 01 2021 at 14:21, Dave Jiang wrote:
> On 12/1/2021 1:25 PM, Thomas Gleixner wrote:
>>> The hardware implementation does not have enough MSIX vectors for
>>> guests. There are only 9 MSIX vectors total (8 for queues) and 2048 IMS
>>> vectors. So if we are to do MSI-X for all of them, then we need to do
>>> the IMS backed MSIX scheme rather than passthrough IMS to guests.
>> Confused. Are you talking about passing a full IDXD device to the guest
>> or about passing a carved out subdevice, aka. queue?
>
> I'm talking about carving out a subdevice. I had the impression of you 
> wanting IMS passed through for all variations. But it sounds like for a 
> sub-device, you are ok with the implementation of MSIX backed by IMS?

I don't see anything wrong with that. A subdevice is it's own entity and
VFIO can chose the most conveniant representation of it to the guest
obviously.

How that is backed on the host does not really matter. You can expose
MSI-X to the guest with a INTx backing as well.

I'm still failing to see the connection between the 9 MSIX vectors and
the 2048 IMS vectors which I assume that this is the limitation of the
physical device, right?

What needs a subdevice to expose?

Thanks,

        tglx



-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/878rx480fk.ffs%40tglx.
