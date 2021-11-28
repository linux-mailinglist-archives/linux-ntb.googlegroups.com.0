Return-Path: <linux-ntb+bncBDAMN6NI5EERB6FNR6GQMGQES45IEFA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 722B446094D
	for <lists+linux-ntb@lfdr.de>; Sun, 28 Nov 2021 20:22:33 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id v1-20020aa7cd41000000b003e80973378asf11768426edw.14
        for <lists+linux-ntb@lfdr.de>; Sun, 28 Nov 2021 11:22:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638127352; cv=pass;
        d=google.com; s=arc-20160816;
        b=rfQs+dr2NaM+pvN48CXMJZoE6XUU1wxqa4eqRVSFrnlb1pHYY2LSJ0kfMUEtC1Jn0E
         gufcK+KQgr7PSfRpg/USJiaH7KU+XOtbX3iXCf+UKzGWCTVDp6L0ZR92CY8pBD0KP8Bb
         QYKCxIpLdwM1cj1n8ETOJUghKqplC1OsVaDBTHYEp/DYiuzzfdiUfmWUI5hn3mb27Uwj
         Kq9n0VrZteGuQ58YILG9YxIzcTQ6q78JfISQKHiTRZ4hky9RWt/i19YXyGR4nPSMRCHR
         wdV2vRLpiiU6P8EiKsV3sNIQN027urva9xerMCESTF+ZdlXs3tOPMm+WhqJyczjcgBKz
         nqYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=D3FZX9AgNCF5T6xkiVmcvQtVRnj//gZjnIRy+I1QJ2k=;
        b=wthTpsw6PM2Nelah2wnXvjeQhoCeE6YciLh9xXbehE5brFiFzPfHSMUVmsJqHAQ9uf
         enF3cj/WeB+6kbmcTQ3P0wA2akR/cu1MX6cvdLJHvJyNKDedrSzS15V38GPAJT3Ozj0d
         Xb5AlpSTvQ7A5V7sn7Ihe+/bN805cYLlj8SIbFVGkLYk/b/5JJCeIf0JHCnFad0KmgEz
         9QqTXcypUbck6cERknKh02elsFV0epzAuQ5PfeLOmKYS/dU6pQH69aY4IRf5rgQeUbX1
         RRhBek7Hht3FiQ4uFRRRXTOgzroLt+HQp8GqigM0YFFOP0v/WARX+Q3poafkIWtpNc0e
         4jOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=1YKU3JyE;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D3FZX9AgNCF5T6xkiVmcvQtVRnj//gZjnIRy+I1QJ2k=;
        b=qGt9HsAH6SV6rtbLhuIZn5TDJq/7WchijcnlrCdLSyj3VGFHdtdDE+NuXDXga6QQus
         +kYxjt+nlkjJ+NjfllWTjgKuRWeVDyZ1Tn+NmEIoDGLTlbO6XMrxJP+FL1huPwFHvrDP
         gdy0aKiLifvlYcjdKKClYV88KjD3E6PJuebKZfI2cxaHEn2e8MQo7fqGzLq5lIxWiK3B
         LyHCoZj4fQnwTHFgH3AHrrWpmL7172l4KWianrKgLJsKE6l2vT/3J2+Yf4HnLAylITS1
         OL4FzC8ZaWL7RyIJTIkU/sgzpxNau7LWx6Mp7HzvOfd+PN9IYj9QA4KfNbYD9p1J8PrN
         mvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D3FZX9AgNCF5T6xkiVmcvQtVRnj//gZjnIRy+I1QJ2k=;
        b=LWYNtkw4AGBczJ7dI5o3F12rkXA+8dMAs4OLkCoU227pzaZBRIykEyQdJqFBi61bfu
         pxzGXQwAuZDe3oibUkSF5a/96ecwtnP8f8oMMJnP4wCJ/oBM7GPu8eLrDkSnYXMgOwwW
         pBS3S2CThe8jk3ZTiMhSi9IBjVCDAgfWq4e/aqXerCV5FKgi2alCOYX8YP26bv/OzFeS
         WiN/jJSYOIrMyJ8w3XVznolnC4VJImHWUKLSCkq5EKVXqF1yxmb2OZHcJa8ub9CiLdB8
         Ndi7YBhCCUCL/bycghUHQyng9MuikHMfidU5F9I4gDsUB1/JxaRhg8oxvjt/2rsJjLON
         tg9A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533uWClxYboXq5XLwa1XTiGtTLgdAsVO6OMH4CVJchLuLUq+jz97
	aVNXzawywb0S2fzU/8u5PUA=
X-Google-Smtp-Source: ABdhPJwwkIir8Y5S6PcWy7OXBHRC+nJs9VbydnkB35Lwk5kConcVCcqNEJRrBDivckiTQ9fzfrYW8Q==
X-Received: by 2002:aa7:c390:: with SMTP id k16mr67984725edq.161.1638127352496;
        Sun, 28 Nov 2021 11:22:32 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:c944:: with SMTP id h4ls2700602edt.1.gmail; Sun, 28 Nov
 2021 11:22:31 -0800 (PST)
X-Received: by 2002:a05:6402:26c5:: with SMTP id x5mr69234093edd.198.1638127351510;
        Sun, 28 Nov 2021 11:22:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638127351; cv=none;
        d=google.com; s=arc-20160816;
        b=MivoVIm8h5z2T3A/SYEVT9HTKflQiRqBwzpImFSgrNKOr8DtAsd6f3pkzX9rHERXNV
         S6HlFnRBz1M7XT7VJwr/qGK0DB0gnYdYG4mw4Fis9URirY8IosQ+HqYP9NjFlRxWZD4y
         BaAxMT2LNeYpxFWe/e3e5ok6qhikJglDphYZ4FjfyRXAddIpX47ZGkgQq2mwVwBXQonQ
         QFLFtRbtGjGc4hdaagVCqg0TJQBjcndfu/aSfurzWqaTbzbfxYdh+4ugXSCyAEB/NfaC
         +Pqyw6sR8xnAfQgjG3eWBZ3jWctA/VJSAsoL69zatAHwxyFO9hvGyyrnJpdIJ3iUAZ3t
         8psg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=E8ZA6r18LEZgOr5P11pd+i/cnzZnNK1YQYI4tPYAbOM=;
        b=OcsEiGlyi9sHk7h81l1/XYhTK6DJ/61dgB59TnoPl9pm2cMuhzKcz6zFLDOKJvEEuK
         zWlGVwgURfzPwNBgPnzJTPN/NbyrEfVuxhkmSKCpMy+rfMMo/rhtbWy87wyf2GRCD1i0
         CTV7/9R04c++D1+CRavt4CrIgDwWy+CS4InooHlgjOqdZPbl7vFkUEUWu57oBhdl/xj+
         BMFOwm5faSkhmdiXvitgUP6gPasBcydXGAGAhKVTtze+g1JmirWPEjE+q+78+GrfyC17
         KQ3O0ThW/YYh4MoLyqx9GDWUbwQwbx4uYqHYbCUwpRj65FpMnwd4nZTZR+erUzGOarfs
         7lmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=1YKU3JyE;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id i23si588247edr.1.2021.11.28.11.22.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Nov 2021 11:22:31 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
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
In-Reply-To: <20211128010037.GV4670@nvidia.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232734.531194050@linutronix.de>
 <20211128010037.GV4670@nvidia.com>
Date: Sun, 28 Nov 2021 20:22:30 +0100
Message-ID: <877dcsf5l5.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=1YKU3JyE;       dkim=neutral
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

On Sat, Nov 27 2021 at 21:00, Jason Gunthorpe wrote:
> On Sat, Nov 27, 2021 at 02:22:33AM +0100, Thomas Gleixner wrote:
>> + * Notes:
>> + *  - The loop must be protected with a msi_lock_descs()/msi_unlock_descs()
>> + *    pair.
>> + *  - It is safe to remove a retrieved MSI descriptor in the loop.
>> + */
>> +#define msi_for_each_desc_from(desc, dev, filter, base_index)			\
>> +	for ((desc) = __msi_first_desc((dev), (filter), (base_index)); (desc);	\
>> +	     (desc) = msi_next_desc((dev)))
>
> Given this ends up as an xarray it feels really weird that there is a
> hidden shared __next/__iter_idx instead of having the caller provide
> the index storage as is normal for xa operations.
>
> I understand why that isn't desirable at this patch where the storage
> would have to be a list_head pointer, but still, seems like an odd
> place to end up at the end of the series.
>
> eg add index here unused and then the last patch uses it instead of
> __iter_idx.

TBH, didn't think about doing just that. OTH, given the experience of
looking at the creative mess people create, this was probably also a
vain attempt to make it harder in the future.

> Also, I don't understand why filter was stored in the dev and not
> passed into msi_next_desc() in the macro here?

No real reason. I probably just stored it along with the rest. Lemme try
that index approach.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/877dcsf5l5.ffs%40tglx.
