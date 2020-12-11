Return-Path: <linux-ntb+bncBDAMN6NI5EERBHG3Z77AKGQEPOP3ITI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D552D8188
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 23:07:25 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id y19sf2902493edw.16
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 14:07:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607724445; cv=pass;
        d=google.com; s=arc-20160816;
        b=x1pBn772YcUYBuIidUirgzGCZwAFkgGk7v3vlBs7zv6iGZz3u9B9gBugroEJTZsma3
         Dn5Vu749i312OSqm0LOY4+fSRr6LMAX+5FcYCI61vWgFy8ve2h0xeBSsnEFFQwkio6G0
         RZTs+xcOz9OwSeW2M6tj6m1j9JmOMxv9o00fJAKgoxalMS9AwUYvSaXQErEDNVcnzOsV
         hjbpGDVDG8327M6j+BW669J/4h05FMx8xNwA/Jun8M5I7n+1jdgZMqfgA6/IjSYNHNmH
         c2W/QjS6C97r3MJ99pBIsCLRzVJF/cxwhK60ImrXNKe0TwRRQW6x5QThszDywqZsVaso
         zuFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=ookvFWUFJoLyd4+9ukz22meCFo1h6wKeYPw2FD79onU=;
        b=XLE0DZAoeUvR3l/FZMJGajikU5Gu0h41N7MjU4XNyst9bKyRXz6pi+xJLSOR3HJRyv
         h3Qx5ghpyuzM/uE5MaWydyu8u1HlWTXJBALqlW4Ut79bC0PjmTKY5sYenN5EihX4ij62
         c8Iz0H5bqlXmRd0zzP006pNM32likposCPkgizqk3jafvpReePvZDLFYoEKKs+UAlOvi
         4s2hxK/a1gu3/AVQzh9FqhjGEYJk3H7TV2DwJvYE+m3TxdjObwqLV3yKYSccGTxWCX/L
         S80AYV3zDg7wwedCc1bSdG1c2L9r6mWBuZGTWiHCQgdz8ge60z/hShgRrnQvPcSFqcgQ
         Z6UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=upIVkJhj;
       dkim=neutral (no key) header.i=@linutronix.de header.b=6l4EGHeI;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ookvFWUFJoLyd4+9ukz22meCFo1h6wKeYPw2FD79onU=;
        b=Wca6Fg8QrFXHg3WsjwtCWHFcjXMrS2luc85c4yEwcTzsmDHhW7KSJPF90y1mizkKqn
         UMVYHC96ct6BDaO/n+4f/sqqf8Ywv9rLtk+4EjiBHjZ/rK5SDLCYxhsxZ/yivclSSTzN
         bTD6qBSRGatlg5dmlSJjS+IAN3bwHzO0az/1UpXBxDBPNAXLv1MQwuUC5zl2O2nAb0PR
         NUWa6nl0EGD9eYIanFwY1IlanqhJ4FL9Z7z1A43GCmsPm+T+NnreTVOIHXNHOT+Xaox5
         ysrKGvBDs40JoGX1yBHap/RpBIn5Xh75lMRwxjy3IIALOKEPyY7KxE+oPMMdTVrzh1+r
         StrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ookvFWUFJoLyd4+9ukz22meCFo1h6wKeYPw2FD79onU=;
        b=uHXEX1+uh9FTNRyu/ry0PEkXewMek2JP4NDY4/jBDlw8gL+PqvU1sMIMsz+63Z8ylJ
         q7Pec/LT52cCCEyVo1Svufiu+6hSP9YVySbv92t2mFi5UwOreWamhkw5dQ16wuWIel4W
         godi/SIDQOlKpU6zxTMgWDRq4azapfvFk8S9LMhLa1Bc0EYFUveO11+cbGW+KCSQTDZK
         vvmTAnljzGcVZ/GogG6FCsL/1O74Q+1itK+fS798+QifG2dPHtNUfAu/wV+KbwvPfJMg
         lsOCp5dBdGXBaM+et7qAQcYNcT/HGUslzCEULRxQ8WUuf5TnG3dgTMj0+ZZE2OeqmiMV
         4txg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530otsPEMVd376pzNdDmUhKdmv9fxhZj2+zSJ6dCFRiLefh/xGzN
	p5tR9Kgs6YWQUPbxXhIeF3c=
X-Google-Smtp-Source: ABdhPJwZ+MUI21Q9565hPjPRTpE52/IjnuTQshaH01AqiH8Q5y09a7PjNc7nq6YKTU08xVtTkJp9Eg==
X-Received: by 2002:a17:906:7090:: with SMTP id b16mr13142017ejk.76.1607724444983;
        Fri, 11 Dec 2020 14:07:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:c1d9:: with SMTP id bw25ls192955ejb.4.gmail; Fri, 11
 Dec 2020 14:07:24 -0800 (PST)
X-Received: by 2002:a17:906:17d0:: with SMTP id u16mr12709835eje.452.1607724444076;
        Fri, 11 Dec 2020 14:07:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607724444; cv=none;
        d=google.com; s=arc-20160816;
        b=U0eEs+oNd8h6k9XrwEtsEo37jnL396FCJGH6I6OGaz63TTBg0kkb0wlaaF/D2Pn60W
         7M4iMQUAoPZHQntN9XONUBs79myl/D0VGQTBQV6UvFzrsn+rWKox2QHUn3r1KEf3luvC
         Bjs/5xVQVAJP0QamR2HI0TS35Dw5cBUCiVSawMcrsz1aDYUdR/d86TDdhtnwv7aY4LCn
         KFU01h8VdjhwlyvQVlg1hsEnopFl8EJxhbUFjGv1KP4wJjQZqagzu+x+6uOoWtzhOZ9+
         yOGsg8XlcmWDtja6TEIyzheD8gzrrqnP1CK8h+s/um3vTfpNE2496wx1xPrHjWzY55Je
         EfYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=uE5KR5qlfz+ztx9s8pbRCB1Be+kxvrwztlDzBEoJCeU=;
        b=NXSknz2pwimEq0NrNJ4Hg5hoSGbFzNytRTNamuhQCjSQj/lDCWyKnr/wRayzfu1i9+
         aR0NymM/hmcP5ec5/3/BUgz44AQNBvyjitI0xiOVtSGtkwrZ2lQgyP6HnDr5E8/zEhe1
         345sWPLg9vLrrS5vkp1cE40ucdd6f/VW4LpNZTwUEk3p2W0J1qrxyWryRFI1brdb4tKo
         rEo/VNZr47DHH1iI18FrOlE9xPTXOzz9+eUtziEbNJZMUSixJ46oZ+bEG+ul26zNmqst
         wi9I0b5CMauiG35Stzl8X2BW3c9QFIUbPWeCkflbymQoF1lCRUzVEH0ymjuRi6QFUecI
         Lltw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=upIVkJhj;
       dkim=neutral (no key) header.i=@linutronix.de header.b=6l4EGHeI;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id v7si569363edj.5.2020.12.11.14.07.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 14:07:24 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>, "James E.J.
 Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>, linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>, linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>, Mark
 Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Christian Borntraeger
 <borntraeger@de.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 linux-s390@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Pankaj Bharadiya
 <pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, dri-devel
 <dri-devel@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Linus Walleij
 <linus.walleij@linaro.org>, "open list\:GPIO SUBSYSTEM"
 <linux-gpio@vger.kernel.org>, Lee Jones <lee.jones@linaro.org>, Jon Mason
 <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
 <allenbh@gmail.com>, linux-ntb@googlegroups.com, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Michal Simek <michal.simek@xilinx.com>, linux-pci
 <linux-pci@vger.kernel.org>, Karthikeyan Mitran
 <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq
 Toukan <tariqt@nvidia.com>, "David S. Miller" <davem@davemloft.net>, Jakub
 Kicinski <kuba@kernel.org>, netdev <netdev@vger.kernel.org>, "open
 list\:HFI1 DRIVER" <linux-rdma@vger.kernel.org>, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Boris Ostrovsky
 <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, Stefano
 Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org
Subject: Re: [patch 03/30] genirq: Move irq_set_lockdep_class() to core
In-Reply-To: <87h7osgifc.fsf@nanos.tec.linutronix.de>
References: <20201210192536.118432146@linutronix.de> <20201210194042.860029489@linutronix.de> <CAHp75Vc-2OjE2uwvNRiyLMQ8GSN3P7SehKD-yf229_7ocaktiw@mail.gmail.com> <87h7osgifc.fsf@nanos.tec.linutronix.de>
Date: Fri, 11 Dec 2020 23:07:22 +0100
Message-ID: <87360cgfol.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=upIVkJhj;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=6l4EGHeI;       spf=pass
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

On Fri, Dec 11 2020 at 22:08, Thomas Gleixner wrote:

> On Fri, Dec 11 2020 at 19:53, Andy Shevchenko wrote:
>
>> On Thu, Dec 10, 2020 at 10:14 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>>>
>>> irq_set_lockdep_class() is used from modules and requires irq_to_desc() to
>>> be exported. Move it into the core code which lifts another requirement for
>>> the export.
>>
>> ...
>>
>>> +       if (IS_ENABLED(CONFIG_LOCKDEP))
>>> +               __irq_set_lockdep_class(irq, lock_class, request_class);
>
> You are right. Let me fix that.

No. I have to correct myself. You're wrong.

The inline is evaluated in the compilation units which include that
header and because the function declaration is unconditional it is
happy.

Now the optimizer stage makes the whole thing a NOOP if CONFIG_LOCKDEP=n
and thereby drops the reference to the function which makes it not
required for linking.

So in the file where the function is implemented:

#ifdef CONFIG_LOCKDEP
void __irq_set_lockdep_class(....)
{
}
#endif

The whole block is either discarded because CONFIG_LOCKDEP is not
defined or compile if it is defined which makes it available for the
linker.

And in the latter case the optimizer keeps the call in the inline (it
optimizes the condition away because it's always true).

So in both cases the compiler and the linker are happy and everything
works as expected.

It would fail if the header file had the following:

#ifdef CONFIG_LOCKDEP
void __irq_set_lockdep_class(....);
#endif

Because then it would complain about the missing function prototype when
it evaluates the inline.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87360cgfol.fsf%40nanos.tec.linutronix.de.
