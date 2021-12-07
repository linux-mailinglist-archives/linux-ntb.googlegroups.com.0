Return-Path: <linux-ntb+bncBDAMN6NI5EERBHFPXWGQMGQEJMPMYBY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A5E46BB95
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Dec 2021 13:46:21 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id t9-20020aa7d709000000b003e83403a5cbsf11335563edq.19
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Dec 2021 04:46:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638881180; cv=pass;
        d=google.com; s=arc-20160816;
        b=jOGsW0zuTRavucn1vJhrI0934CXq1GeMv7JX3mqGoujqlSjbCJei1gnIvstWS1vJiM
         nByhxOkUQkLyotoOPZVXDlRF/uEk71LjTlHUAhzZwBiVJ66Ua1YmoPDZQ4nHczx0zPDN
         DXOc8SYyPJVXgID2TQV+R3fqbFEJGFY3ibBoPX7qeOj7cs9mziA/9W3gSS4VSJAF8Kmr
         Rk6QDpTGcloxTbpv1o5HhGMnVnZX4KQIV8JVRwQN0cConhrEVe8K+q/F5wcE6sKjtidH
         OdKBjmDCxjBEGKCONBOz2SwAZCrbQyN2R9LBRP54NK+VcFwHnjRV/pMH15WHRnQTHRY2
         s0sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=pFQn8CEFsS7EFhJapDEAT7vz1nMIWwO5w3MTOh2GMSU=;
        b=J3/abNn5KDxnDzh2H4gV3i0U0OV0E6Q5skuNsFbZesaRgNTq9vyuQdtVp2MX2eXP4l
         yHKd3dFgdJHHEMGCksHAAWEDlRC8zCTVS8W7PWDpwgSvjGacZPdMUGXMvIlmHFEhbD3v
         rlZM9PnWvOz5SJ+aIHwUQo0Y1k134e9YoWHRKRHTkoLlz4fjU+itb+Qp/k/M/ubh81Q7
         pSyWiiEl+10nJtRbKmFjWF0tauiKVBm8vuCfv9lmXB1oyHGm8vygHAD6vs02KPAMEFSE
         cUQRTuWRdi4ZvGvdHa+Oa6PmTyn1Lki1qXfz71QMbIS5fJ8b2ongIXq2vGgPZ/LhxHPy
         UYXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="zkOUIyV/";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pFQn8CEFsS7EFhJapDEAT7vz1nMIWwO5w3MTOh2GMSU=;
        b=WTwpa4d6ioxtqIFW5HdYD7qMREslvXYe+Qd3Xi0LoKW/QGJhpiKUX+LMkAcoXb2Nfy
         fAEsiFEz0tIRrNVyB5yR/qV5Fxe9YH+nAQJhE3+rQONQ/21t4/2b8sIxlIhY0A41zsH0
         OFDtpvFmowHWOrCebc0pVB4ycjvoKRSfd+EgyguyLW4dL87kzdgWUkv0y6ipu+c973Kz
         aHYUL0dX+TLvH5BjasqDfBKsNtgo6EpxaKA335Q2JJ0KhcG7Gykthjf+9mGzZwSeqtKN
         Mn0ZK1XpY78aUCtuXnvWMBcD6HOiIxWtps5VwI88IgTi59a3H0rE4zIxsAZvyErrMt6H
         hL6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pFQn8CEFsS7EFhJapDEAT7vz1nMIWwO5w3MTOh2GMSU=;
        b=kJeMhP8A/Cu6iZXUzBsF9bFSdZxGf7mLQjprOoc1FXIsxA09bxzElRbnptXazuqTwb
         I8ceYYcS65WI3QeCagfirhSQ/iOqjBlrZkfNnzE27hcUUIQVrGPzaKgM/e4r4ogJEOJu
         E/GJBjkWIj8RtyohNq37YoVWD6jgc0vnHU9kEJP6/GkbLtrayFsc4rmDTaYEa8QmlJ4m
         HA2EQThKj5xG9cioz7RWuCoeig2mEuG9yNDo9HYkgwYOqrNwoTbbMBwW6wIRUxs/GcGp
         PeBVsjczSirImRPI2RWq2ue3PLJwuvZeefn6ePykGwVet6Op9bD9rkdU7skEynmnCbsc
         vfvA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531DzJdrs1Ella1CiaQPYwVkVmB/emwNZobX8oB+ui9PPUEx2xVi
	Qhyefl+xVy0ZOUhhcPZZiGY=
X-Google-Smtp-Source: ABdhPJwcg8QNotZzrY3ul+Wwe30NyJqgct4Y+inbTEWQQHs6hWGK2GZEGWzCzcnaAFWh5UJTqoczLg==
X-Received: by 2002:a17:907:3f19:: with SMTP id hq25mr50940489ejc.225.1638881180869;
        Tue, 07 Dec 2021 04:46:20 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:907:6da0:: with SMTP id sb32ls6994818ejc.8.gmail; Tue,
 07 Dec 2021 04:46:19 -0800 (PST)
X-Received: by 2002:a17:906:538d:: with SMTP id g13mr53868425ejo.62.1638881179823;
        Tue, 07 Dec 2021 04:46:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638881179; cv=none;
        d=google.com; s=arc-20160816;
        b=NfdL3teRdE3Rv/bC/piWeFVeLxW09OeRXkyZSMM3yW0bHhkbNrzltGsWhJO/8oMkxf
         HMVOV46Fh3ZkJeUCJqbA4lpSn6RHyu7F0waPFxzR5BpfUu6uoFu90YWV5euHTDtLPVZU
         FrruPqSoQE6Yx+7yBoB9qv8cvO/QAoubxfzvN4ZGTCbIu9JLAAD2HDY+TEXOCtUGhD1Q
         w4yeNDwzR7LplM763bZ4eEcLFJKCV3dWfOZ9ofWVJIsch9cKWVCM/+fIIe/RoamToJap
         4OJrc0ovr5blkP0lQh0OdQBSKSBI2Hbw55mNsHatMjCo+h01TME1BWPs9BaT9G2PsDjb
         72yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=QKzQcfpFrakF1gaQnErus44+ZE9ndLllCgtGuvnr0lo=;
        b=QxVf3Rcd6z+tPk2ZrXIHhXvMZPN8MBjWfrg3ndOv3z+jsxZYxF5EYmG1EtJh2gx7QY
         nhf5F5HoiZ3wf6WSTM/6xR3BKBL9rmF+EfSNjQfAwndc7vbL/0XEKZPYd/pdnDSkKvrs
         UM/LuQGH11pkxW9L1DKZj14oh6xkOr7PLkxsUBkzUlJY1N9xkN/JYqbIor0z59X3Y0JB
         sTJVgF3P7e5kgq0I7/OhrhcnZCb6Q1kaBMqL9Y4QJ/kZxnjkwskAQ2Xdxuh2BMnj6N6s
         PwWwg8Yx3tAxj+2dnIbwL0oeHVf07qpbrksTypcEocSUtkxCapjQwSDjCHe0104SwW7+
         wSOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="zkOUIyV/";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id s8si860845edx.4.2021.12.07.04.46.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Dec 2021 04:46:19 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson
 <alex.williamson@redhat.com>, Kevin Tian <kevin.tian@intel.com>, Jason
 Gunthorpe <jgg@nvidia.com>, Megha Dey <megha.dey@intel.com>, Ashok Raj
 <ashok.raj@intel.com>, linux-pci@vger.kernel.org, Cedric Le Goater
 <clg@kaod.org>, xen-devel@lists.xenproject.org, Juergen Gross
 <jgross@suse.com>, Niklas Schnelle <schnelle@linux.ibm.com>,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, Christian
 Borntraeger <borntraeger@de.ibm.com>, Logan Gunthorpe
 <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: Re: [patch V2 29/31] genirq/msi: Add abuse prevention comment to
 msi header
In-Reply-To: <Ya8Zj+bADtKEISSP@kroah.com>
References: <20211206210600.123171746@linutronix.de>
 <20211206210749.170847844@linutronix.de> <Ya8Zj+bADtKEISSP@kroah.com>
Date: Tue, 07 Dec 2021 13:46:18 +0100
Message-ID: <87lf0w37mt.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="zkOUIyV/";       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted
 sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Tue, Dec 07 2021 at 09:21, Greg Kroah-Hartman wrote:
> On Mon, Dec 06, 2021 at 11:51:49PM +0100, Thomas Gleixner wrote:
>>  #include <linux/cpumask.h>
>>  #include <linux/mutex.h>
>>  #include <linux/list.h>
>> 
> Ah, to be young and idealistic and hope that kernel developers read
> comments in header files :)

Hope dies last.

> You might want to add this to the driver-api kernel doc build?

When I do the next round of refactoring, I'm going to move the functions
which are available for drivers into a separate header file.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87lf0w37mt.ffs%40tglx.
