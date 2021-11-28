Return-Path: <linux-ntb+bncBDAMN6NI5EERBJNOR6GQMGQEOPXI5FI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC9A46094E
	for <lists+linux-ntb@lfdr.de>; Sun, 28 Nov 2021 20:23:18 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id l4-20020a05600c1d0400b00332f47a0fa3sf9247688wms.8
        for <lists+linux-ntb@lfdr.de>; Sun, 28 Nov 2021 11:23:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638127397; cv=pass;
        d=google.com; s=arc-20160816;
        b=HZqRDh2MoGO3cOlOU0khc8Sfwqpc0bo8r6FJLcJrpRqssI6ZHtbR1W6SYPCxSC3i0P
         uItKQDaAhLC4kZBGNTPihDbhdUMlDm3Pjseb8HVJHAJfE8Si1SdGotmCoRzsRAWcCQIR
         2DeDYm1PmzLZLsUnGX+EnltQeZCb5lqvk+90CZ3VJpITLoy4N8exXrS/tGYezIbsFgmD
         ErUqjBXvQZzHaOEEanV3cUCrCAb22ZUG4jGCRD6DuNPjOy4U03eMsoJB1l5rnK7II9Zy
         QhGay7Y5JNLruKocQbdJ8zneWvwjHZmbeQxt6JisknlhXMEQJA3hWuXR+qfcBrSJ9noa
         Wxqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=lyYcp+ezJKT7nJ1KTm1XKU8hBWZb3lEfWdgMjgooIlU=;
        b=PFa98RKv9Cbx7zKnij99hgJFgB5Z64HCTJI0oXrMVt0xZVN6eTyH0/NBJNum3Zhrkf
         WU+5vycA08Xeckssilne/n7YHazBBGQ1d2sKUzPBuksU1o2jpq0MHtYREU/p/6CgtXUY
         iGfhHBylrlVJ6x7gpMLD/CaMCwisqP02Hol2CVLTrYaokxFVSETcAdOToTtRLHMyw8KG
         3UNldX8mBL9FHy5vrqy1L94l6Py8qNH3JrEb+saVM/TF+bFoOmVFMEpF9U+GTUwv09vN
         NPMjThqe45R7xkfywrbJEayhDv4CIDbGe2HBe1rf57jtzQ27HSh55OzBwi87kU99Bpo7
         +3Tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=BfNvN2XP;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lyYcp+ezJKT7nJ1KTm1XKU8hBWZb3lEfWdgMjgooIlU=;
        b=eC0AVdc9kdzV9GQn5jXjGI5dITz1prdx1mwza6mxWE3VWfT1j5b4+DFrN2iXi3Xtao
         +coDDF8pgzVlAuYinKUu2FausMvybSsgi5slT1s31Y8kmnpt5PVklYDoeMlr02Wogv3h
         pYwdYyAzU+tUCJ8yDtZgwbWgKwydiI3SPspEHmAYh+QmVKa8HXafjli9qmWsimDoIk37
         lo2eKvJGx4n4PB1ZRHjTGNX4I2GgBsrZEq8cqgjZosMkEM4zT4k2KB6lKEkiSPiNv3KX
         W7fLQ+Dw0EUFZ1gcO06OtIybjbhlxh4QjVqi60zweRNBYksTJugfFHfKRaSwGtlGeKTr
         I6mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lyYcp+ezJKT7nJ1KTm1XKU8hBWZb3lEfWdgMjgooIlU=;
        b=6CKdIbZgiwsBMGNLRA/jbL75sRN9BsCc/BjQGJKMJPYjTEb4Nj7XqXyk7cCCdQIUjX
         bhwJPa5qFzTGXvIQ169+pFwDqHRwIRKwNZyDCwHl8W8KSHEk6NfdDSKYsQWplItiukFd
         WGli0KO7Vk6QAAi+pPF1HkQoXidOsc4qsbd95zpfavYohSD6p7EPRnpxZ0bh5DgXYIi4
         LknaC2L3ke79FUWLILcLu6wZerHv9SGUvbWh4+T3VggtrPdm3USfTLzYuJnHJz1EAOLt
         KUQkRh3bRgmDCOevk8dXaaCR377/uHv1Wt2FglG4KzhBi3PUw7GZjyROlKHCoDxm+tXx
         2t2g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531XUK1ml52KNE7svBhhsNEIRGT0Xbipgjdhrape/u+WSBGP5324
	2Op3SqZEpaB2ZUfPmPeU8ok=
X-Google-Smtp-Source: ABdhPJxdIxiSn5gt4OwGdbzdyetMURFD+JK9vDp9X4jJQ98422MA2kiyz6c0Dr9eMvRiTvQ6eEqkAw==
X-Received: by 2002:a05:600c:213:: with SMTP id 19mr30213703wmi.16.1638127397415;
        Sun, 28 Nov 2021 11:23:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:80c3:: with SMTP id b186ls5499053wmd.2.gmail; Sun, 28
 Nov 2021 11:23:16 -0800 (PST)
X-Received: by 2002:a05:600c:294c:: with SMTP id n12mr31011840wmd.71.1638127396617;
        Sun, 28 Nov 2021 11:23:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638127396; cv=none;
        d=google.com; s=arc-20160816;
        b=s4VcLJufrq96TIMlANB4AFtgpUJgyaDeRM3At1Rk7pFxyeQ1GYOZvtIblWWqpFMeKk
         Ns5E3lH6VDNtcn7Bz+lOxBPxAbop2gWOvE1gBhjDWLNzZsfuK3BhZco6sfvfF6UHuKP5
         3HHC0K3RA2LS+yJVfu73jxmQKcfsu2dkaFq+bmHF51iwDqBPiI+AKEwGCFoEZitHIWb4
         SVfVqiU9Dlmb75k22a4b3xtF+/Eia8KoPgMH24KpkTZqTxVV0Wbjvmf2WdX22gG4FcUG
         jXObmxX6ViDtyJOmHDvPcetrkpkmaMzds+bf35Z470mTksZTqQyifj9AkuUpcfMkUmuQ
         gjnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=Lv8OHlL9mgf3j1bUYluo2SmQppu0Dcs5/MYDfTpMBUA=;
        b=0ejxmj01wfBbFWAZ4yfoE+/2AQKLz0IrLgyHSS5FRsztZ5Hl7iZST8eAQMuR8oORgD
         WnThHGCzK6rCuhjANtXcPFY3seHzEHF9c+yCU74DKNYXK8GXSDUqjwNsQt8sB2/C2jiS
         j6VROgFN4DddW3oBCdbaTT+G32JdSGD4R+JsRYHmBzCzcXh0yp9KnjIY0HRJ7r5st7MJ
         QHL2VG6p29V3BxqLDeDBs0a3xoacz+w2Kq5uCKvtumq9LWi0qBXMrxY6GI51x4w2TqRP
         sVLZBzgzMcIzufkjl8ZbD4Rj4Oqep916v47Zyr5tMA8mTKvOijuE0/W+Mhm2xWmLAuz6
         avCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=BfNvN2XP;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id z3si1204201wmi.2.2021.11.28.11.23.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Nov 2021 11:23:16 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson
 <alex.williamson@redhat.com>, Kevin Tian <kevin.tian@intel.com>, Jason
 Gunthorpe <jgg@nvidia.com>, Megha Dey <megha.dey@intel.com>, Ashok Raj
 <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, Christian
 Borntraeger <borntraeger@de.ibm.com>, Jon Mason <jdmason@kudzu.us>, Dave
 Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: Re: [patch 07/32] genirq/msi: Count the allocated MSI descriptors
In-Reply-To: <YaNi/YqN0ARC3h2z@kroah.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232734.708730446@linutronix.de> <YaIiPISLr7VokL8P@kroah.com>
 <87o865flot.ffs@tglx> <87ilwdfkmp.ffs@tglx> <YaNi/YqN0ARC3h2z@kroah.com>
Date: Sun, 28 Nov 2021 20:23:15 +0100
Message-ID: <874k7wf5jw.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=BfNvN2XP;       dkim=neutral
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

On Sun, Nov 28 2021 at 12:07, Greg Kroah-Hartman wrote:
> On Sat, Nov 27, 2021 at 08:45:18PM +0100, Thomas Gleixner wrote:
>> On Sat, Nov 27 2021 at 20:22, Thomas Gleixner wrote:
>> 
>> > On Sat, Nov 27 2021 at 13:19, Greg Kroah-Hartman wrote:
>> >> On Sat, Nov 27, 2021 at 02:22:38AM +0100, Thomas Gleixner wrote:
>> >>> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
>> >>
>> >> No changelog?
>> >
>> > Bah. This one should not be there at all.
>> >
>> >> Anyway, why do we care about the number of decriptors?
>> 
>> The last part of this really cares about it for the dynamic extension
>> part, but that's core code which looks at the counter under the lock.
>
> Ah, that should be documented well as right now you are saying "this is
> done lockless" in the comment :)

I already zapped the whole patch as the function is not required for the
core code.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/874k7wf5jw.ffs%40tglx.
