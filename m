Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBSWPSWGQMGQEN62XHII@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 847D146289E
	for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 00:52:43 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id v14-20020a05620a0f0e00b0043355ed67d1sf26636917qkl.7
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 15:52:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638229962; cv=pass;
        d=google.com; s=arc-20160816;
        b=k3gbH2Q9shQ5cCL+381wCFu8jHs3HUd9fHSmX8rMIK0zyUrRSUzEB6LKX90eR+MxX5
         IIAJsfg+GIl/fdNDMpfZaqfmMYDxW5vruSi/fhV9ryVtnjZe08SeMeNJjcZSb65zna2G
         ujOvVBwJJDxNzh5d6ZYQmsTQfRhIIL5mxOukbCPpRqmmqyprVttm4bOUMLvNaw4BTNKb
         Hq3lQwpKZ2Tb6ZROny898w5QqMexOBjwZkrxJAznQ97VQgXhQcJf7CMNwSIPK/BCpzhz
         517f5wRbSlwv+143KFXo0ebwKebzbVMJprIMLZK2tWHK/B9jvUjKTpqVrHTE/yDFZJba
         pItQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=LkgyS8QgL2PjHc7wwWmImhGYYx9IBCnHevb6JULCGtE=;
        b=vOr+jxae0insLzwdb39HAPPAc3DFguCuZejsmFU+Xd4BTEUWY35/mTwvAGWQVSsqzv
         sTGyZOwEONO3wqYbwWk5ZGyqR2fGcyRLLh7R0MyaoTTiHM8r9asWSmYtBppNXLxjjdnD
         PP+r1Wb7pdsD+nF7P7WKNJGLmzH6EyXscYllYkcGvA6tRtxbffe0MSLv+SY3tqr3KsX0
         y1MoV1KxVM7RK+J+eqyarLOTqyIQF53rEx9aZvLs/TIpe+qyTqX5UVXpF23SqcFmh70m
         ZovIIVkWRC09FqdNyiEPy+N4GZ2BjmWR3J2/vP+fWW6ZJ8UHg+wy0UlCXP/JIWdxdPd1
         uRcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=szTRgrh5;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LkgyS8QgL2PjHc7wwWmImhGYYx9IBCnHevb6JULCGtE=;
        b=dBq6YUgxfGPGF048Fg2aa0WlwrsFlT3b163rc0h/buGto5aQR+cYeRhFnVGtpiuLn8
         PknaB5daEkpd7X9gUOIYZPfZ0Uc1VixK9f9OEf6mP+o2qHeyAgsQ/YhKz0ojiqwCeEvu
         OJHpNNrpMHB9h3R3aVVez4ceXPm3LjEOXqNHIFvBaAOwliil6HY7OwbcnKI1dR1Xt/ao
         nOHKX/uSMxrNm8fxXss7SRuw41Fli6/KgXLyFm39erz/1HW2R2Wp7otkchazlm59YVnj
         urgTBCuf/IvzhnDZE8V5xETvBeqOk5zDGeAn3z1fM8iRFqH+tNFrx7obKWty40CtFWzC
         s3eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LkgyS8QgL2PjHc7wwWmImhGYYx9IBCnHevb6JULCGtE=;
        b=xhuyv+bPrzz8L4W3U/baW9JjnHSwbyKOfZtl4asEEbcZitxP5Nlrx6Z9XGgoLBfvnd
         K2LW8ZWn40jKCyJuRVc4UIiEoBjJUFp/kZIAhKg4SNHc7PvrMatdI8SfIaXG5HRkIA8b
         4bBfBJSEQxurEzvoljX+PBXsA7pb1nBIgMX5Gtp3dE76fyRnOp/BcOxbxc8KyqSl8hQ9
         xr5PjXesp8XalcbWVeodCW6u2s5w5ZAuoBfHPXzOsdPkp2nRJx80uC+3oRHTD5oRysEw
         aLbUdpKMJ5MVI93i7O/l/0k+IbXfY23ynLk8qAKikiP9jfORgmhsPuqWBbDYoYLLRD9j
         gagg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533LttWxESqPYW3YeqJDX9hJUjpFauB8lhchtwlanaSaQ/lGWggd
	mZonO6WkGk4QRNGMuJ2Xnto=
X-Google-Smtp-Source: ABdhPJy01Mqnsgmr7zUgyIHusCJEnzkCB3gCq0EanK4VbwGIaaX/S7U5H9SGZiQlP5JI65evRdPV6w==
X-Received: by 2002:a05:6214:29c4:: with SMTP id gh4mr33407786qvb.118.1638229962316;
        Mon, 29 Nov 2021 15:52:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:1e13:: with SMTP id n19ls9401561qtl.10.gmail; Mon, 29
 Nov 2021 15:52:41 -0800 (PST)
X-Received: by 2002:ac8:5c53:: with SMTP id j19mr46791091qtj.40.1638229961892;
        Mon, 29 Nov 2021 15:52:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638229961; cv=none;
        d=google.com; s=arc-20160816;
        b=acY1V0QBaNoizKBA/NIXEK8vWnQhlulxzelfQMr+pI+tNNFFkVVq1XDWi0SmQwlIrT
         EwSrC4RunPaFFMnawRSivTlfJuD+fO4WGT6UXXXhWMnYdjvaBXWbTyLQYA4mOnxFod8a
         tC6H3Bg8CsPC5G4AxVzsH3278cG0i9kBiz43cy9nb6wOALI5bX+ussRmzpTI1MGJV6rN
         aWlT8ukfgHjZjgvwtC47aTJAM+YTvVTSjibCn8GHPu2+rYKBJuteKBDka9hDGqjpaYXz
         QEweslKfrXMjCVcH7kOwJdZxJkFUbkc0YvBTmwCYpyIhbs1LjFTKEZVHKrNuWoUFI7Zc
         ISqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=Wk88kMip0Z/okfMWIXWV94wlf/VmCY/sBjrNS3bEyU4=;
        b=E91RMhA6BZnTIwGCwasnQs5pm2jxDBQM1vMEf0PuAb2VOFu7+jiFiXQ7XDn8vDUNB9
         Wj4fdLemL4fJWXWyWtA6AQ8Qx6y1ufeBCZDQ3EABmZj6/WQeGcTvY9F52IbJ16juzWqs
         OSWGBcd34GJUMF/fWCvG8yeodf0Q7r5gfk3W0P010+CEYG+svYWhF5Jihyqin0BdAVza
         LkfBqiqKMXnrUeTA4mejt7LZoHwKHBUvEndR0RDkN32GDMBJSGXDnssbTwSlxpdlbJ7c
         ODDgI+KKegpTsYQCjRH12+YXysbDFc/yfFYIdeTzWP24PWVbrm+wQf0yWp6xo8B7WiAz
         sYyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=szTRgrh5;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id u7si1192095qki.5.2021.11.29.15.52.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 15:52:40 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <logang@deltatee.com>)
	id 1mrqRq-00AS6I-Db; Mon, 29 Nov 2021 16:52:39 -0700
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>,
 Ashok Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jon Mason
 <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
 <20211129233133.GA4670@nvidia.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <7c5626d2-ad80-24eb-0b89-402562156135@deltatee.com>
Date: Mon, 29 Nov 2021 16:52:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211129233133.GA4670@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: borntraeger@de.ibm.com, hca@linux.ibm.com, linux-s390@vger.kernel.org, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, gregkh@linuxfoundation.org, linux-pci@vger.kernel.org, ashok.raj@intel.com, megha.dey@intel.com, kevin.tian@intel.com, alex.williamson@redhat.com, maz@kernel.org, helgaas@kernel.org, linux-kernel@vger.kernel.org, tglx@linutronix.de, jgg@nvidia.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NICE_REPLY_A autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
X-SA-Exim-Version: 4.2.1 (built Sat, 13 Feb 2021 17:57:42 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=szTRgrh5;       spf=pass
 (google.com: domain of logang@deltatee.com designates 204.191.154.188 as
 permitted sender) smtp.mailfrom=logang@deltatee.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=deltatee.com
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



On 2021-11-29 4:31 p.m., Jason Gunthorpe wrote:
> On Mon, Nov 29, 2021 at 03:27:20PM -0700, Logan Gunthorpe wrote:
> 
>> In most cases, the NTB code needs more interrupts than the hardware
>> actually provides for in its MSI-X table. That's what PCI_IRQ_VIRTUAL is
>> for: it allows the driver to request more interrupts than the hardware
>> advertises (ie. pci_msix_vec_count()). These extra interrupts are
>> created, but get flagged with msi_attrib.is_virtual which ensures
>> functions that program the MSI-X table don't try to write past the end
>> of the hardware's table.
> 
> AFAICT what you've described is what Intel is calling IMS in other
> contexts.
> 
> IMS is fundamentally a way to control MSI interrupt descriptors that
> are not accessed through PCI SIG compliant means. In this case the NTB
> driver has to do its magic to relay the addr/data pairs to the real
> MSI storage in the hidden devices.

With current applications, it isn't that there is real "MSI storage"
anywhere; the device on the other side of the bridge is always another
Linux host which holds the address (or rather mw offset) and data in
memory to use when it needs to trigger the interrupt of the other
machine. There are many prototypes and proprietary messes that try to
have other PCI devices (ie NVMe, etc) behind the non-transparent bridge;
but the Linux subsystem has no support for this.

> PCI_IRQ_VIRTUAL should probably be fully replaced by the new dynamic
> APIs in the fullness of time..

Perhaps, I don't really know much about IMS or how close a match it is.

>> Existing NTB hardware does already have what's called a doorbell which
>> provides the same functionally as the above technique. However, existing
>> hardware implementations of doorbells have significant latency and thus
>> slow down performance substantially. Implementing the MSI interrupts as
>> described above increased the performance of ntb_transport by more than
>> three times[1].
> 
> Does the doorbell scheme allow as many interrupts?

No, but for current applications there are plenty of doorbells.

Switchtec hardware (and I think other hardware) typically have 64
doorbells for the entire network (they must be split among the number of
hosts in the network; a two host system could have 32 per host). The NTB
subsystem in Linux only currently supports 2 hosts, but switchtec
hardware supports up to 48 hosts, in which case you might only have 1
doorbell per host and that might be limiting depending on the application.

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/7c5626d2-ad80-24eb-0b89-402562156135%40deltatee.com.
