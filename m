Return-Path: <linux-ntb+bncBDAMN6NI5EERBCNVT6GQMGQESCQRPSA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6234F46571A
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 21:26:50 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id d20-20020a05651c111400b00218c6372b7esf9066475ljo.16
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 12:26:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638390410; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iwf/2ejmBL0+tpzXPOf7XGpJwDio1NvyOOgMHmH+J5knzhFLZs7kJyMiBKjPzp/5sa
         3cWrxUWQfygwJ78dEI6o27dQLL9TeMtUZkov9fFrHmPwrNSUlevh/MBLsx99CEu6QQdn
         wP2CP1MSc6EAXDlzeHUHh4VQCDr3uzcTJi8yLuFtPLpihub1fBHWEMoTDWtMpsZ3iwBG
         xqkJzDhNkGSOibR+uWzVukkwMKnJXQ71ZQTHUHojfKjIwVMT0XMVzPz4ObQOip0HBRRZ
         loFd/2op+cKqBfCm5lp8VNzNG7ULo3A1ac2NhCDYqN2DJzKO+JTlO0i+l8VWCt550g+0
         E2XA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=qyoB9gI9sEBjMCft6AfU1sn6bxonpjZo7osdB62m5B4=;
        b=D7D1QwBxpQMveqsZlIIAox0kRLLvMMCkwefaYqXWOUl1u0uLA5tZDUTtFR5qSbeYE2
         Sb8hTLcDNBtSNirnGe0bPY986y2ArcyRJ0UbeaNFenF1JXb2CHuOIEKYELUz7jjhNtT/
         7l6I7FNe7uEuS5CE44usUzCUfL2nc1Z9wTep4nzByKe4D/cvQA6S8ASLetwQLpaCEI3r
         RS3A9HY03ORRbUKHo30WT5YSOpDDgIm5YQw6XnRKPV+FM/K/AIOh1L+jLVxIeeqwVhp5
         fMtiaoHFH7vLFSj1uR4Ha5G7D1zdH4f8wRrnlELGIcjef24wEqsqNx358rxx7jsCoAcs
         +3xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=X5oW6RyQ;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qyoB9gI9sEBjMCft6AfU1sn6bxonpjZo7osdB62m5B4=;
        b=n/x3fhqNqD5i+ShJ1ejwiILempQWJed1bVsQR+GCEo6+TZcfIGK8E/VBAYzecKyCO2
         2MM3hOLLLxx+c8gkmTrW3i3K2JKREtyDPKc3WbCZiNwWqX3pU1VbfSeIYX3BI6U/r4bs
         VvgRKbyRozv81YW2STJbaJ+y99ztR9EWvmuIseaENbGx/BE7a9t161LaRW9ghwPU2v7y
         izIeOCKQsXeuSgSElC9EgS3CJcYTkUQoNgPQuiycpnrsD9H/9pcRmiZ3ibl1E/Rt8JYm
         hJBTX8Ca2fh+8D6jTfxs0aPmW++2U+8sC5mRKgi/Znpag0NOs7QXhKjUhxxGPfNieguW
         SiUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qyoB9gI9sEBjMCft6AfU1sn6bxonpjZo7osdB62m5B4=;
        b=6hbOrX9QOUFXUJaF+G/GWV+od0FfI7cHmewlBbjbe5hsU3vEKVUBU20QmbCmyUu19O
         j+YYMxDmD1j+urAfhKJ3qF9MbFuc4WpwCyjw+TV9ggcdSgi9a7Cokfnb+ThdDO9F+u2d
         ZIsSzYjzBxkazY/V3OyZXYdlUvMm5bAsZO8Ak5d1pn/cxX+Ek9zhVkv3f5iA4JAwov6P
         Zgu5mnEepB13oRovj9TFGk9J5cCe8Y+k4YuO7axDAXxUvj8kbG7XA6ej2rA7PE11DWeT
         V9bIiMvt5D4Dg4D7tcZA8nAPZHdKgqH+13j1JYt41hOV748ra+7gzLcmekx6gpw5gR95
         b+yQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531n8FJoXL+H34tc22FfOxk8ZzkUUK3Q3k9VVphNVNk2jSi1WND0
	6jxGSg2MBvoAWheg8UL3UnM=
X-Google-Smtp-Source: ABdhPJw5pMVBlHcS7D88sWf8Gd5bMPffKYFH8UMDyPYDSTntRz0Uz8ckDpw1fzMyudL1h/newKrH5g==
X-Received: by 2002:a05:651c:a04:: with SMTP id k4mr7678640ljq.12.1638390409960;
        Wed, 01 Dec 2021 12:26:49 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3e10:: with SMTP id i16ls1580791lfv.3.gmail; Wed,
 01 Dec 2021 12:26:49 -0800 (PST)
X-Received: by 2002:a05:6512:3da2:: with SMTP id k34mr7804240lfv.605.1638390408977;
        Wed, 01 Dec 2021 12:26:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638390408; cv=none;
        d=google.com; s=arc-20160816;
        b=jGcgqucI4O9GDtZIk+Y8ywojsPYsEJGEBrOgw9jenYAGIoQPjAq6aaWkM03vk4L+b9
         wuUgFgq8wYNmIoVGkM9RS3EgGGeRlb7f/1OwzuI/TBAzOBHu9RWMK9JJQMd0rBmst7Ea
         EAW6KLbBU7WMNbEz4PvE0/vURwFRweJLE+AcidYl5we0wLjeVKcZJrn/i4DyFYvnsLNW
         VTbUugvTQX71aaGVUN1AyEOkecNYz9Fz2vDzZh7ZgNXI3zodmhBKwxWhzpf2KaMIfJhb
         sKomZpmNanMTegyU/9+enpwvHGDiEVuqormg1sbugjtQqy4Cn2UHpk9sCBQ+Qz5WVteF
         JSEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=9iFHbC8vXSahbGhWk+99dygWsu4VzQjJs9HViZs2rMo=;
        b=e27KKQNX7IJUQu72hZmKJ3NPIQNatoE3GsAK3EGa1Cxiqsq9/c50yk4lLf+/AiwzPu
         KTTAqtilFYsre11Kxn7PS2ej5HGhJtRCDSwREY0WKxLXHvxx0qC0lyXX6BiNOg8uioQH
         H32J+oNqeDsjT0lVjnsiYXw93C3z5MaJonrBHpEi0MkP/w8KsMBORK18oU+3ah4XRAmn
         rTw1dXuP0q94ZitZXQYx5IVRAXW8YAHasS5gGkXUXIfUHWOQtAId15e7d/SbYj9nP7Ha
         1nzTV+G/nqG86xYgSQNoOoKqYps+dt4i93x8D9waA1v8oLAeA+qOZjOqsiz14nO0oFpD
         f/Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=X5oW6RyQ;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id e15si98951ljg.0.2021.12.01.12.26.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 12:26:48 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Marc
 Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>, Ashok
 Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>,
 x86@kernel.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <20211201184726.GN4670@nvidia.com>
References: <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com> <87o861banv.ffs@tglx>
 <871r2w9y3x.ffs@tglx> <20211201151121.GL4670@nvidia.com>
 <87sfvc893n.ffs@tglx> <20211201184726.GN4670@nvidia.com>
Date: Wed, 01 Dec 2021 21:26:47 +0100
Message-ID: <87h7bs841k.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=X5oW6RyQ;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
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

On Wed, Dec 01 2021 at 14:47, Jason Gunthorpe wrote:
> On Wed, Dec 01, 2021 at 07:37:32PM +0100, Thomas Gleixner wrote:
>> I picked that because it _is_ already used to establish the connection
>> to the switchtec_class NTB driver which is beyond the usual cdev muck.
>
> IMHO that is also a misuse. These days two drivers should be hooked
> together using an aux device, not a cdev and the obscure
> class_interface stuff. Aux device supports auto probing and module
> auto loading for instance.
>
> An interrupt on an aux device is at least somewhat conceptually
> parallel to an interrupt on a mdev as both are usually representing
> some slice of a device.

No argument about that.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87h7bs841k.ffs%40tglx.
