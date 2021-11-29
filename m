Return-Path: <linux-ntb+bncBDAMN6NI5EERBNVZSKGQMGQE4V5U4SA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CA946110B
	for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 10:26:16 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id u11-20020a17090a4bcb00b001a6e77f7312sf7619112pjl.5
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 01:26:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638177975; cv=pass;
        d=google.com; s=arc-20160816;
        b=sG2iLTJ1zvvda3xlou0FijZ87dJDf46Pc3pyETsHAdxpqAPBppkPQhpvTD9ITTMMRj
         rXVPINSmp0li8OGECCG2+FP5DpC8n6NPytLmAy4GqyQRM4YJYz5TR3uLVOOJ6hlsb9l2
         XC7vvHmCX1kyVuOnbdSbWnEf3ZoOzibyG7n3RS/zxLCnmibDd7y3931XHLn7q1N4EfTy
         qpQs0wPcdezmTCS2b78q9mOrANYdgc2AMirnWKEu/A93vwoaExIkBYmNsrFprkLiLQ/6
         PsHfTtq8bnJztnaQNhg/fF4HmrjJu/MukY82TsEx0wWPOy5Gprb5Pfs7ohELY4OWaxQY
         bX7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=TosT11OZHb/yiIoSCeh7umotmL8yUWJB2yZ5TN6wf7Y=;
        b=MbbPyjnylnxkKDcowosbRphzPB2zAtiiI3qz3ZGcHZwvgzDYtbp+Rr64/SqrDDQz0l
         S4Q6I2m3DFbUvph+qAOcRgTe8jO9GWU/NxmLq5AflltqSyieq0/reJlfRQwLKJ6cSJjl
         fcAfWvwW+me6TIp4r1ABB3+04iyE1FpTGeshcNIUpirsLMXq01bl4TSpmnhf8Qihm7EF
         GRifxOst6MiwlFKr5DuqtxEpxD+IzJv4Ob99RWeGBjB9gd7QR9SaWvPA4+Dvfq5lK1Jy
         6l7NO/tNIFFUlI2qxzM9SDZa5dbPwvP8aPEUHng8oNZdRK5IU/10AH/bhEK6GQTFnaAD
         8v2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=nJiWamim;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TosT11OZHb/yiIoSCeh7umotmL8yUWJB2yZ5TN6wf7Y=;
        b=iY14Z6AooG0u4LwPtii0pQTC6deWuTIlY4TFy1WDQLQLeRKZRrrNwyDuOTjC/Quo33
         MmWuJCvoqVOaAOZ6LF09TudLTnEE8YfD14UeKXT7KRTk9wBNnOesl7LnHMwdODl/aNl6
         cbjET9RH748hZVyR2ARPAcCkMZgTEhNFEib9zwMoFNZAJCR5pBigCnuLbqXvbMsVxQl7
         jj7iV/NIocUZYU1DEgMIcDHQKpQltDjFq8P9vHApnUNF7rWVRONTNuTsf0B94aZI22B7
         aHpvGz8It3x40w69xixoEe63xzSxmubxgRwdHCS0NtGoXa0rfGOICRslCJOT4b+VSm9e
         0iQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TosT11OZHb/yiIoSCeh7umotmL8yUWJB2yZ5TN6wf7Y=;
        b=KFzqzKif1sQr8lQwnr/zFKt+/nxGWaH376H1Fr7XIeIZrPdgge3jb9Otg0sP/yyKzj
         PE3KmtDl9n5lEh0iivws1b1ppfQOZeHSxAB1i1oWAkbUMEcn0r7sZNJ7wT3PZHMvhE5V
         aKFMx6HPWBWVc1iXQXF0qeH3ayo9s92hG2iCFVjouS+vVm2anOtJQBZOYbkhLZmpOQ7m
         Z91Bo0pY8OIu4IsU2srNoP9ROQrL9hE+4I8SPkm4H3VsZ0NyP0oXgQgWntm2gkT1K5vR
         8gIVi9ptR/lR11cJREgLgIqC3o+aX0vhDxTpqwhCJPufucyauPsAfSnW1lnDUV9JGweZ
         5fBQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531FfW4wV7VNptXVeOXN2w0sCb8CwHY4t6zqRtAHEuOroMOUjE2o
	/gc+3jLflCONheh27dTCstQ=
X-Google-Smtp-Source: ABdhPJykm36SWgiTj3XuSwk//UQsXUmAphEUXlRIUpffNTpi5gVqDrowwCFITIbudZXjYWq4lwugqQ==
X-Received: by 2002:a17:90a:1d0b:: with SMTP id c11mr36502883pjd.207.1638177975003;
        Mon, 29 Nov 2021 01:26:15 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:4e03:: with SMTP id c3ls3624279pgb.1.gmail; Mon, 29 Nov
 2021 01:26:14 -0800 (PST)
X-Received: by 2002:a62:7a54:0:b0:494:6e78:994b with SMTP id v81-20020a627a54000000b004946e78994bmr38097767pfc.5.1638177974142;
        Mon, 29 Nov 2021 01:26:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638177974; cv=none;
        d=google.com; s=arc-20160816;
        b=mcutMxluGLOB5M+Qj1Sd7YuJBcx74TTdlhJccgGej+rELEMokWBZ31ExR75rtKIs7D
         vnzM1QqsdbpkvpAflCwhBDkg1tJJX6ucnkExF06lZBB9q1JGDv7FNdRMRPpYXNlTEsF1
         l2u3KlVIfVCINuyC9e8u4Ju309iDYSLq5ixQld7p+obgEgvQJAsFYTOtsYmF9soykI9g
         NW9+TuXlagdZ9OjdTy5WlhvB+bRRRSGN7bSrPBY6kQSXogzsKH8nULLBgyXuCKqv5wlc
         0pUYziy2lsh7SoGBH5PjyY5eJVKDVAxwkXUyCNQVz29xazRo5qq7MfQv8TSkAxBJXKkn
         uQZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=vsQfYjhiBM4r7l7V0nZmUO3oNlQtIhI3OMTj1eyI/yY=;
        b=g7qo2jFeW1mCBIg7BpX5KbopRgE0R5nXJliEJO+8R4PjrlDTvXFQQxWXJQjvII3WDt
         vFzYLNHg/24SD7cxQbfc/fcAWdxtCavUzEzgvRMQCRRDI/DBcGhKgWoIwWhFsf8Vi+Vg
         lBsDXzbXDOXJ+6TLmSJeYOm4fl2LXZfluUjtZrV4cr6fjbz2Crg3SQHNqqqiFPpiIMmf
         nIv7dMRPmkaLkWSFn7XMEgdQ1mN6qZC87+H709UqoTlpOlOxEPaxPd7wIh+WWYtFhOWz
         88w8uPBOtpy646Px9nlxZe7ni8RvKk63k0xXCSsRXUoMINJBKmQdXnZ/6R3CGyz1nzBz
         bOpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=nJiWamim;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id p10si355763plr.4.2021.11.29.01.26.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 01:26:14 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson
 <alex.williamson@redhat.com>, Kevin Tian <kevin.tian@intel.com>, Megha Dey
 <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, Jon
 Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
 <allenbh@gmail.com>, linux-ntb@googlegroups.com
Subject: Re: [patch 04/32] genirq/msi: Provide a set of advanced MSI
 accessors and iterators
In-Reply-To: <877dcsf5l5.ffs@tglx>
Date: Mon, 29 Nov 2021 10:26:11 +0100
Message-ID: <87o863e2j0.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=nJiWamim;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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

Jason,

On Sun, Nov 28 2021 at 20:22, Thomas Gleixner wrote:
> On Sat, Nov 27 2021 at 21:00, Jason Gunthorpe wrote:
>> On Sat, Nov 27, 2021 at 02:22:33AM +0100, Thomas Gleixner wrote:
>> I understand why that isn't desirable at this patch where the storage
>> would have to be a list_head pointer, but still, seems like an odd
>> place to end up at the end of the series.
>>
>> eg add index here unused and then the last patch uses it instead of
>> __iter_idx.
>
> TBH, didn't think about doing just that. OTH, given the experience of
> looking at the creative mess people create, this was probably also a
> vain attempt to make it harder in the future.
>
>> Also, I don't understand why filter was stored in the dev and not
>> passed into msi_next_desc() in the macro here?
>
> No real reason. I probably just stored it along with the rest. Lemme try
> that index approach.

After looking at all the call sites again, there is no real usage for
this local index variable.

If anything needs the index of a descriptor then it's available in the
descriptor itself. That won't change because the low level message write
code needs the index too and the only accessible storage there is
msi_desc.

So the "gain" would be to have a pointless 'unsigned long index;'
variable at all usage sites.

What for? The usage sites should not have to care about the storage
details of a facility they are using.

So it might look odd in the first place, but at the end it's conveniant
and does not put any restrictions on changing the underlying mechanics.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87o863e2j0.ffs%40tglx.
