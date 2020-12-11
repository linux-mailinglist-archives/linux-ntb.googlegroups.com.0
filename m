Return-Path: <linux-ntb+bncBCT4VV5O2QKBBIHEZ37AKGQEQEKZM4I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CF62D7D53
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 18:53:37 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id q12sf5749137plr.9
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 09:53:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607709216; cv=pass;
        d=google.com; s=arc-20160816;
        b=wOypNB00valj/HEVoWmU/l5wlIioXhjmoGvpKNfK+MTk0tByr3B3YzH+otPVkyHEHN
         Yfcy6+FoWx8gVSqzaJJYLZ3fEclvOuSQ/iFo09NU/rB2wEIQEGaGB4kzt8bE3IGRR/VN
         EJbj50UYbI9ONdwSCtmE81sl0qtYWWXdOfH1lfBnMMaA0hvOzbW12DhpQgIi+DE9uvjn
         csMbkfNKwlRK+0tWlKdmtEGkPWg0LdYr1VR++ha7mMf6HS9MnJXJC5LmrbN1Rsvl3nqS
         wxYlwivxzFi6EpLuDvlosrkbjvZykyXXkyVKbNRAre0iKBpimc2BNXv4vx2NrAG4XNYA
         t32Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=BPaZiXYyb1+wxS8uKJKnOVWimTVfavQXqsj5kTgHlGw=;
        b=STjZAdQQcWOoz1SVNAz6WvPBAhuhRWpYKR1w8obsiAqpIPClbS6VvfA06+bmr8Ofo9
         qu9+8c9GXLAiiF1LlIMMeA+Zvk5Ya9AMkrtGjbUcb6qyhhrcdM7Gmtua1DtdGK3dyXEX
         Z2hIrBSjq8Zl1y12DtZ73cxFQbpmIse6R7QDyqo+Hod2Y8bR54WMybGWcAinjW0OR3Ai
         ZQvW+pyCSe+012z/4Uo7oRCGi3f2GflUs+azoRNASgXW3z3/zS8WE3IjGm0OhIN7oogJ
         YPjoLoSg4WWiyLzDHjT7dII5O9C2KG67BxpD+mTXuZI+oSNmpV/8dpinNQKg+9u6giN9
         kVPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pbcP9ZyM;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BPaZiXYyb1+wxS8uKJKnOVWimTVfavQXqsj5kTgHlGw=;
        b=LnBGOB6VHrTy0uVb/imzyUo+MVuAAhHfUXFFOKdziH2wFDl4RMtsK0DebtmneZP84j
         BhuvOcXqT7JTjiPqtkcHQ/efQbGYOPsRXBtNPHFkBugxd0DtyMNoblMpjbJkxKrCspA6
         szKZwgR5/EYqYr6eFVZMF94xuXjp5Kou4WiEZk8kOOorHl2EyIQUxcp0FtHREgf8n2bY
         hg0zlRh6ImFWgMdekSbnxoe5botXJpJ+3Stzgga/Xq3LG0Fb47lTyD8aAkmFpXuaoacT
         zTxL7F02f1gNaqVqYJWDxzmyKSoSVj3qkLqbsRktpsWESvRnzk3sE5hTIEw9T0Q021PY
         L3ZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BPaZiXYyb1+wxS8uKJKnOVWimTVfavQXqsj5kTgHlGw=;
        b=uX5oz9C9uKXwfnHF4KNrWmyRAB/r0sm6vaQNGh7jZwZSqcwGfpW9ht6xWjETJsMOYx
         SrZb5ZGiWayCZJN20cUVvww6F9FPUa8X/YEUsOaF2HVQ5pS0j6Z6OAgjKlfT1mfiM226
         Zr56KFp06gPDHLullx9LEAgotQ0G7wSd6rhoz+347KBx9IRlZs1nivi3Wur0KoQfmA6Y
         0uxGgPhp9oCuPdiGHKwufv2UWeKb8Pm4HIcnQ8RYgPzEMhiI7LE6bMkHWeoCq9SYf9uP
         eLoPrk0a3sI46GvkBT7/lObYl6rne6PJ9R19TVxCM0klwVyR7xzeu5Mi6HJ8wq62EjvM
         vbWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BPaZiXYyb1+wxS8uKJKnOVWimTVfavQXqsj5kTgHlGw=;
        b=sO+4r5nn/ppoUmM0HO9Fko2wQp0QtEvhvlJ0TpMFfrFzDM3BYmwaKxB/x3UwCQbB+Z
         pZYZcoOj+InBwx33sYeii/J/h3U5B8Tt/6fQVz5hHeCG37b31xVLzJGglvEu5mfGtDRB
         muhTFH+9cIzxGU5XJgld4aIS1W/c2eFI7yGDq6rdtZ2jMX1nCTb+b2c1fgyBCu4CRyUc
         VxjfPCn5+tuu+eS77ybSj0E+CIZtBsS58T0A0hG+mZbVIg4qXRsiOwdY9Dadlb7PHRf+
         MHVswwzTIswQyNnISZV8YQe39KfjXiL7bqo/XWB77RxzcYIkmOFkBw37OApfjEfdFupJ
         TFZg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533qqzNHynoYJTHC8QGYBRWikgZpV35Twr358OmjpEskK0i9Y+pI
	FXzYabcbc7YX7rEHJSjprys=
X-Google-Smtp-Source: ABdhPJyH8RwSMVkzVCJrf/3f4qXsykwfLYGhG2y4lRNiO3IOWiXUk3bLo+meHcNo1lLHnzcpWznn7Q==
X-Received: by 2002:a17:90a:7842:: with SMTP id y2mr14389122pjl.36.1607709216236;
        Fri, 11 Dec 2020 09:53:36 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:e54c:: with SMTP id z12ls3786434pgj.8.gmail; Fri, 11 Dec
 2020 09:53:35 -0800 (PST)
X-Received: by 2002:a63:2258:: with SMTP id t24mr9349944pgm.357.1607709215668;
        Fri, 11 Dec 2020 09:53:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607709215; cv=none;
        d=google.com; s=arc-20160816;
        b=kKTrvaVWI+u7XuBs/Tbj72rpSeC51pEo+qNI+7T4Mnec53NajOpT0VplAQQlmkCHpm
         cNPz0bcR4SyVeAHB9pHpdA22OCE0MbINT9wLmMFiYf4fxDvBgm8osL1mHv5Z73gac4Qt
         AoXurggD6K4GHDviC9qqr1sMPYTWbgEIr6/xn1ndSnZdypFcx8qk/0M93gg1QG+OZ93K
         iHJUlV1RSZ2XI2gnyqpJHCZ33RMgcogM2RBDQDze06XZEIw5GvO/XhmxCEUxrJ3+xQop
         5q6h1Xb29oS/m+BsXn7Puwen7cv4JsbtUngKXcHmK9MlBqDFioHMcLBzYQ9sIOVP6LGQ
         pcCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qJMuReBBloytY5lBy9ILiGRjMb37kF5Bm1u/sykMtGI=;
        b=SydNoOqlz3fCyiHcYcNh+fl2aZbc+x0aeiGeRsUAcNNhAwb2S7/R6o9XiygVvUsF4a
         1caE6jrCy/YXP8FqRgylhPYcUHQDA2RbLKv4kfGw0etyVtpZGtKUiMDRQWiiNEvNBb6Q
         iKTLN3VoiZITNA9aNQoZp+hR0NqLFQ/+csnyEXeULZyIvJkV+GXKrbNx/8l31UfbwYzF
         cGnRKNYqFvR0NVr3Np5dYI8m0eSCwdKot34MaR1sPp/ETzaurafLJ5ToBRt6sVJXEJWZ
         9NvGBJlhz+zIJqHJUEOr+SQIjiD5kYcnZ6SJZ/UzVbEEPFuoyKuCrKg/qgZX+T1eyA8G
         eNIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pbcP9ZyM;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id e19si820773pgv.4.2020.12.11.09.53.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 09:53:35 -0800 (PST)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id h7so2117927pjk.1
        for <linux-ntb@googlegroups.com>; Fri, 11 Dec 2020 09:53:35 -0800 (PST)
X-Received: by 2002:a17:90a:34cb:: with SMTP id m11mr14313128pjf.181.1607709215341;
 Fri, 11 Dec 2020 09:53:35 -0800 (PST)
MIME-Version: 1.0
References: <20201210192536.118432146@linutronix.de> <20201210194042.860029489@linutronix.de>
In-Reply-To: <20201210194042.860029489@linutronix.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 11 Dec 2020 19:53:07 +0200
Message-ID: <CAHp75Vc-2OjE2uwvNRiyLMQ8GSN3P7SehKD-yf229_7ocaktiw@mail.gmail.com>
Subject: Re: [patch 03/30] genirq: Move irq_set_lockdep_class() to core
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Marc Zyngier <maz@kernel.org>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, 
	afzal mohammed <afzal.mohd.ma@gmail.com>, linux-parisc@vger.kernel.org, 
	Russell King <linux@armlinux.org.uk>, 
	linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org, 
	Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, 
	Chris Wilson <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>, 
	intel-gfx <intel-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, Lee Jones <lee.jones@linaro.org>, 
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Michal Simek <michal.simek@xilinx.com>, linux-pci <linux-pci@vger.kernel.org>, 
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, 
	Tariq Toukan <tariqt@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, netdev <netdev@vger.kernel.org>, 
	"open list:HFI1 DRIVER" <linux-rdma@vger.kernel.org>, Saeed Mahameed <saeedm@nvidia.com>, 
	Leon Romanovsky <leon@kernel.org>, Boris Ostrovsky <boris.ostrovsky@oracle.com>, 
	Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pbcP9ZyM;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Dec 10, 2020 at 10:14 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> irq_set_lockdep_class() is used from modules and requires irq_to_desc() to
> be exported. Move it into the core code which lifts another requirement for
> the export.

...

> +       if (IS_ENABLED(CONFIG_LOCKDEP))
> +               __irq_set_lockdep_class(irq, lock_class, request_class);

Maybe I missed something, but even if the compiler does not warn the
use of if IS_ENABLED() with complimentary #ifdef seems inconsistent.

> +#ifdef CONFIG_LOCKDEP
...
> +EXPORT_SYMBOL_GPL(irq_set_lockdep_class);
> +#endif


-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAHp75Vc-2OjE2uwvNRiyLMQ8GSN3P7SehKD-yf229_7ocaktiw%40mail.gmail.com.
