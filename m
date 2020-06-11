Return-Path: <linux-ntb+bncBCM2HQW3QYHRBDUURH3QKGQEXBXQSAY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDAA1F6AA6
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 17:13:19 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id x186sf4101537pgb.6
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 08:13:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591888398; cv=pass;
        d=google.com; s=arc-20160816;
        b=ppn06NX4AIAYmK2JQjfJIyv5wf52blN0z3+j0DckafKX84SmnTXW5rki4tUyNJvJXy
         H6OJTT84OBgF+rFlfK03jjOKEYwHftkVQ2B9PW4FXec1pXznc7/v4HfHUS9kIuVwourP
         h3jf9+B0tNZStYDe9uPp6zM48sNwL9IJFxeoMETirdhByPhlgsRmerrejacUbiySJO1N
         kvWKgqB0L6wSy40xCiqF7+uf28O7SO1ZbuQQ4NB32isOvlCZkEbTKjzcab1nrLw39Ycn
         7pqksZhf/xTDti/agVES5BzmI3yWJc3LGkzH8ESn5PxsQoW0qzaVPWeuyWJctTn7YhwR
         l37w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hmhgd7iaRFZBOmn0ixRj28KwQ3PzA1H1E2FwsOA61Rk=;
        b=mQgkolzIhxklyidU/ylNRsvTaaGFBtcKccaHd6Hn1JLNoExX4Uxl7zgvEJjjxnnlQd
         YFsMTiil6uPgnVd6nQ0sFXQ9avZthtr4bIEAvYiVHfppU0Vpx06Izzp6h2WFp46MQSie
         kk/Zn14wI7aj2RMkK1VnScjV7j6JAqgv0Vsa0+tfGwaGcKelePdqJmoWvl4gev+cJWUL
         6Qh4dLhUI7zsSC18o5BzyZsY1wXtDbfz2533porws0iMy4Rvrtz0W/cpSOfRo8nbSUfP
         NvBq9qPu4uuboqt1348wHR+ySG+rqgirmgAH6UfqvTmIghPgQtcPp+vDP9nabs/xRUQf
         6RbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=UtaPwmTz;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hmhgd7iaRFZBOmn0ixRj28KwQ3PzA1H1E2FwsOA61Rk=;
        b=dQeyxl7ecUDImNDjuS1WQALisxlCFHlvMG1UzBv/UhcYcCbsT1EGgn1jOcy45YOdEh
         JrRLbxPfq5vKST6V/cPxahJrbhBPWULi+OPNATFWgS9h7uNHWSKhL9MOTimSd2kGs8mP
         RScNlJ0EEd/Md1P1sxXRS4AvkqkvQdzZAIVtgiqB9Fxuzxb49+/uuGjVIa5SkdNvXlqp
         g53hPDufPOFuWyPZ4Twvs8o+dzDJ28dn3MAyJ/T3paefGNjnd0QjnkaNDuqqxusvx+MW
         B1MdoaszDQzGgKJ5fpR8rFE2UxPcbfSiKHpEjL68/OjxKgOWmEqQgj6HXqgeTVetfLjS
         JVXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hmhgd7iaRFZBOmn0ixRj28KwQ3PzA1H1E2FwsOA61Rk=;
        b=CVowrLCVXtmC4LI5yuaKO+O78HsxKsxUDmFHmg7Cj/fiRYJ4VFh1Xvjn1Wk853/rOR
         cm/HO7VpJpkxI85k0em2jrHZthRTFsxQAg2MDEZzEkpB3gZutIi+dYKIUY5TE+6gpBUb
         ZO6oFy6+N3ipw4CH2Dk3H0N/tVH4FoqVdo3heiz7RtCiscHvlZWWho1fs0NbKq+YN1yV
         Iey7OsKlW4rUvdfU/cNhKo9dA4PKZ+flJE2qp98GjA6yje963ykFqKSdZalkLPoJfqON
         VUakExYPrHF0/izwbYbnVaF1TjC7hTyHq6tEdK2iHTad2yZKxg0q1NBEviP3cLMxBEnt
         5l1Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532Co8DLb6sihT5gmVokx8CrZaBriwnNtB7euzzRXiP/vQKhNcoT
	PeaTjquVBUYF9DVdgiw+Vok=
X-Google-Smtp-Source: ABdhPJyGd3GnMpk6efFqxHzPKNL7AunRZ6fO3W8568ceSB1neUbfX+0mxRn6SfE4UHJp9t9fgEVOMA==
X-Received: by 2002:a63:5961:: with SMTP id j33mr7273376pgm.372.1591888398456;
        Thu, 11 Jun 2020 08:13:18 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:63d0:: with SMTP id n16ls721058pgv.6.gmail; Thu, 11 Jun
 2020 08:13:18 -0700 (PDT)
X-Received: by 2002:a65:6446:: with SMTP id s6mr7376820pgv.59.1591888398115;
        Thu, 11 Jun 2020 08:13:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591888398; cv=none;
        d=google.com; s=arc-20160816;
        b=V0B1GER1sbMomB7AwhqQoRo+gHziymOgUUQfK6pBP+f2XLAgxR8qW9hVQZzs/zCiVn
         UHVtSYL4wLKlwpx3F6ESsKg8gemp8xKSsZ06O77zQLK7Nkdohesgo37zdqrRXC9k2dHe
         5qAeIXMyCQqLPQ3su7KRiic9TeMq54FB0Z8HNPvEliz0RVA5nj5/g2hZFRrVl9vdhDZD
         ukWcdYQNbe3T2yYmgvbm1jEvvV4xjBtIkAsgB87jkXNPbSqQBtSd2JAkzRTnzpOyme0O
         wKmx06F9rdTChigQj0areoeUdMirJz7Ooi0o6s53pNKAxdgX3RH8y4/PnZoa7PH8uup6
         pcWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=w3fBHCM88Jt6cDakKyk4xboQWGAsFcwZYcNUwD/n+nU=;
        b=qXhwdLQ0A3/h1NrZzn7ba4aGWT/S0+6D1UPn96mrsA48y4WSbDaY1AcvWd/szZaaj0
         PSuZDqsystoz5oJOVWa/eDKBlqrNZ5B/p3oE6WSGn+cAjLpBeSi7mdO7n5L4wK0wL1vp
         gZRH5qinEFiXfLemaV9F639awTaS7kOamk0WsjUUR9dvUsyylou4JApFX4+tmMupxIKS
         nVLgt8G03Q9VP2bSgIyQJjTVXaX67ZRmJogNoFC2potXQyrVZnRa281x6FOmCkQPpjLx
         rJfAcAQHCOHrb8cDYn/zyy6hGm8J6dd9fJRc5It0g0XDD9Cll4GZLTVzVXHGG0+VXTI1
         E6Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=UtaPwmTz;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id gv9si241476pjb.3.2020.06.11.08.13.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2020 08:13:18 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOt3-0001iB-3j; Thu, 11 Jun 2020 15:13:01 +0000
Date: Thu, 11 Jun 2020 08:13:01 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Arnd Bergmann <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: Re: [PATCH v2 01/14] Documentation: PCI: Add specification for the
 *PCI NTB* function device
Message-ID: <20200611151301.GB8681@bombadil.infradead.org>
References: <20200611130525.22746-1-kishon@ti.com>
 <20200611130525.22746-2-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200611130525.22746-2-kishon@ti.com>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=UtaPwmTz;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Thu, Jun 11, 2020 at 06:35:12PM +0530, Kishon Vijay Abraham I wrote:
> +++ b/Documentation/PCI/endpoint/pci-ntb-function.rst
> @@ -0,0 +1,344 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +=================
> +PCI NTB Function
> +=================
> +
> +:Author: Kishon Vijay Abraham I <kishon@ti.com>
> +
> +PCI NTB Function allows two different systems (or hosts) to communicate
> +with each other by configurig the endpoint instances in such a way that
> +transactions from one system is routed to the other system.

At no point in this document do you expand "NTB" into Non-Transparent
Bridge.  The above paragraph probably also needs to say something like "By
making each host appear as a device to the other host".  Although maybe
that's not entirely accurate?  It's been a few years since I last played
with NTBs.

So how about the following opening paragraph:

PCI Non Transparent Bridges (NTB) allow two host systems to communicate
with each other by exposing each host as a device to the other host.
NTBs typically support the ability to generate interrupts on the remote
machine, expose memory ranges as BARs and perform DMA.  They also support
scratchpads which are areas of memory within the NTB that are accessible
from both machines.

... feel free to fix that up if my memory is out of date or corrupted.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611151301.GB8681%40bombadil.infradead.org.
