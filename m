Return-Path: <linux-ntb+bncBCUJ7YGL3QFBBYGFRWGQMGQEXCS7OMI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CAA94605BA
	for <lists+linux-ntb@lfdr.de>; Sun, 28 Nov 2021 12:07:13 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id ay34-20020a05600c1e2200b00337fd217772sf8605042wmb.4
        for <lists+linux-ntb@lfdr.de>; Sun, 28 Nov 2021 03:07:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638097632; cv=pass;
        d=google.com; s=arc-20160816;
        b=ate1fnLuCW3UZhv5xliAcEpeJ6kwSsqrbX2z8T6q4D8aybTa5X84yV9h6Lwqm5yB5y
         usUIDDrSTAmr+P3jXl0t+XeOHVqRnaMmM47wSVO9rF6qYpYbIes0/IucY171unnCvDmi
         +5DDoypnBYASEWUxHRriWy3+GkAMJcvrbPuO6xLQiYAKYvmp8HnGj8off6qMIztOzkfI
         V99+dkx6BLTvg90m0NRtmV/M4yURWw2V+HEXqhBpyXYkNHeYfsx49nhZvF57YrOriKwu
         KdiP4npzfR8VA90ntdUE8VY82EFAUocUg/mFp3zIF9nLqjeyHJmdEsl/VuGJ2nmsftiE
         7lhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wWTiRtQMWFLWiZqq54tdlLp9y+PjKbYXWIIYyS2EiZs=;
        b=t/S1iAkTpX+Bh85NEiLMon+wCPJ55D1YDTb7+tgfD72tDUH+m+N500p79LofcEzXx2
         Uf8EGWYOR+hBnphW/unYHCv2JmWJsJPfUEVope5WrpJQn/+NRw9AFNkTTXYkmAKiNSdV
         cVE2OeEDDUvQV5S3homKZ6UG3Wdq+zLur6LLyALFsZ0TUsyZ+BjzxxnuLZwBeGlINu6k
         v9dljgZKjVAf9ZH3PNz3k0fJVZtkg+56WVj2BdtP5tYSejlkXAgtTH8v3QoXLhAKfTJx
         OyMIdpO1MF2q9Ej/d97XjgZLwqUSuEqVJZNjVRhDEmnZ+kgOrjvo1Sry+FUekZodJgq6
         sJqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=I8mCqVBi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wWTiRtQMWFLWiZqq54tdlLp9y+PjKbYXWIIYyS2EiZs=;
        b=q6KGGZB4b55zkYoYZbpc+iv77/QyDtQ1bd9IHmvlya/4oMnkIE5G8AbTXCyajlvcUT
         k16KcxTm+Ex8+7hC6Y2e3EVHWTFJ9SgOFsggpPy59CwVixbCOWT28LKji9Oeuo2WMwae
         ut8r9+LYh92FktzB629SRik3lzqhY1mtt0GZoML7cCKx42aaTJMOWVz8PwJvIESwkQGt
         4MqIYoEDZzjsW5zR/qoukPYKzoSpcHPmydjEOOQibGFpQsE9zPCC6QnQ//C8eFyN+Xmw
         k6Y6l9CtSbI9xj/07Qhcp/xxX+7to96KMbJtbiTwkkonFB0zFySt/Tscdi9u6HMLXbnd
         rHuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wWTiRtQMWFLWiZqq54tdlLp9y+PjKbYXWIIYyS2EiZs=;
        b=XiSl/YCsZO7KoCx584lOJthap52GE/VeAPAwfTDV5Sg5/awiNnslDXZ0cORfwvJRlr
         7/XLUuZxmKuNEp5we/dCKB/jaiZLDT+aPOmKtj+PxkYRlS91efF/UAkxXMlE84Qp7mER
         8JhHNEEI41ip6TOkheYCxhTyP5Os0dOGziQV4ecLCIpUyUB+1nrtCmu+5t98LF9KiIB6
         dqEmoBlHhzflOyPd/a2wdD82KnFbW6CUMGhyMK3LctNbsejGrpweft1p7AcfiA14nQa0
         Mw/Eml7ILRqchmgVaSe+rNst96UZNvuwhXlzH0JzgatHE5sOYXBdfim6bGpIt7cY3Aoe
         AWFQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530FgCzQTLfED08+8nd6hR1oBIuCk9p9pLz1kuupUPvNbrJNRR3/
	zQcRuV+svngawupq7FMMGbQ=
X-Google-Smtp-Source: ABdhPJwyO5VUI9am+50uuyINB9eNHWDEyLAzw9Vdcs6Mp9hE8Cizx2YE7yVH4NwcvSBa/00IkHUC2A==
X-Received: by 2002:a05:600c:3c85:: with SMTP id bg5mr28269728wmb.58.1638097632360;
        Sun, 28 Nov 2021 03:07:12 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f885:: with SMTP id u5ls3862699wrp.3.gmail; Sun, 28 Nov
 2021 03:07:11 -0800 (PST)
X-Received: by 2002:adf:9bdb:: with SMTP id e27mr26441722wrc.417.1638097631487;
        Sun, 28 Nov 2021 03:07:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638097631; cv=none;
        d=google.com; s=arc-20160816;
        b=tvYS8NVk1lSTUwcYifC1Va0rTtoy4PHA/RIaLO4WPqeciGk7xl/PwJBfBnXG65YrPC
         ThJcJJy8O0Ma6PDluJi/6MIv1fUXSCrBDH3ZEdHoiX0nHSeF0JxB63F5nP03mayhAgRs
         2MkiJ9VzG0u/cTOwhsy0i92rTi+z1mIywtn6vwuPENuZYAyxfL95BFT1MrOjiq5XKAg7
         DRvSxof1QVWN1tCUAKquAVVXuTSwrxqpKZwJpsOBEKFto5mVHyvECQa9f6KjRzXOg57F
         FERwTovpJPlyy0qFXu+C96P9AL+NHPMxvqWZ5Xc6/kY2Pw8+iiRaIBKqMmw5WQ85BA6g
         WjKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ayzi7LnOQam0U82XMBC6CR48BErXjqDbBnJVwUFZJuQ=;
        b=g0o8AnjenETj39x1IZCUF/hychd6gf0EIwXKUix9Atey5bohd5mktiRWbAGhFnJO8x
         jl1ML4xPc4bXDPOW25rZx6bKSe+ope+S6+graIAkVm/oSQS3y91aomyQJauefQJHiTJu
         p7ko+ynPA5Pgwy/eoasthe92KFJ29AAlOiPGykvmOiexwcgixxpyLjVPrgaSs1NPismq
         pHjbarNyeOgJBd1s022Q7mZ4MWJ7+zvHSIAlWOx5ORonEVwkg3cz9JFL0ak8VcKqRhQN
         Q8EOn+Z9WjiyE3/IJJHvLAgl1xWloQFAcqugPjLJOmL9NnySXCdFypRFClX1eMhn9yjD
         gyTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=I8mCqVBi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id o19si2078692wme.2.2021.11.28.03.07.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Nov 2021 03:07:11 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1C32660F16;
	Sun, 28 Nov 2021 11:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2B2FC004E1;
	Sun, 28 Nov 2021 11:07:07 +0000 (UTC)
Date: Sun, 28 Nov 2021 12:07:05 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
	Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
	linux-pci@vger.kernel.org, linux-s390@vger.kernel.org,
	Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com
Subject: Re: [patch 31/32] genirq/msi: Simplify sysfs handling
Message-ID: <YaNi2RkiYdnoEDau@kroah.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232736.135247787@linutronix.de>
 <YaIlX8bef2jPLkUE@kroah.com>
 <87lf19fl9i.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87lf19fl9i.ffs@tglx>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=I8mCqVBi;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217
 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Sat, Nov 27, 2021 at 08:31:37PM +0100, Thomas Gleixner wrote:
> On Sat, Nov 27 2021 at 13:32, Greg Kroah-Hartman wrote:
> > On Sat, Nov 27, 2021 at 02:23:15AM +0100, Thomas Gleixner wrote:
> >> The sysfs handling for MSI is a convoluted maze and it is in the way of
> >> supporting dynamic expansion of the MSI-X vectors because it only supports
> >> a one off bulk population/free of the sysfs entries.
> >> 
> >> Change it to do:
> >> 
> >>    1) Creating an empty sysfs attribute group when msi_device_data is
> >>       allocated
> >> 
> >>    2) Populate the entries when the MSI descriptor is initialized
> >
> > How much later does this happen?  Can it happen while the device has a
> > driver bound to it?
> 
> That's not later than before. It's when the driver initializes the
> MSI[X] interrupts, which usually happens in the probe() function.
> 
> The difference is that the group, (i.e.) directory is created slightly
> earlier.

Ok, but that still happens when probe() is called for the driver, right?

> >> +
> >> +static inline int msi_sysfs_create_group(struct device *dev)
> >> +{
> >> +	return devm_device_add_group(dev, &msi_irqs_group);
> >
> > Much nicer, but you changed the lifetime rules of when these attributes
> > will be removed, is that ok?
> 
> The msi entries are removed at the same place as they are removed in the
> current mainline code, i.e. when the device driver shuts the device
> down and disables MSI[X], which happens usually during remove()
> 
> What's different now is that the empty group stays around a bit
> longer. I don't see how that matters.

How much longer does it stick around?

What happens if this sequence happens:
	- probe()
	- disconnect()
	- probe()
with the same device (i.e. the device is not removed from the system)?

Which can happen as userspace can trigger disconnect() or even worse, if
the driver is unloaded and then loaded again?  Will the second call to
create this directory fail as it is not cleaned up yet?

I can never remember if devm_*() stuff sticks around for the device
lifecycle, or for the driver/device lifecycle, which is one big reason
why I don't like that api...

> > I still worry that these attributes show up "after" the device is
> > registered with the driver core, but hey, it's no worse than it
> > currently is, so that's not caused by this patch series...
> 
> Happens that register before or after driver->probe()?

During probe is a bit too late, but we can handle that as we are used to
it.  If it happens after probe() succeeds, based on something else being
asked for in the driver (like the device being opened), then userspace
has no chance of ever noticing these attributes being added.

But again, this isn't new to your code series, so I wouldn't worry about
it.  Obviously userspace tools do not care or really notice these
attributes at all otherwise the authors of them would have complained
a long time ago :)

So again, no real objection from me here, just meta-comments, except for
the above thing with the devm_* call to ensure that the
probe/disconnect/probe sequence will still work just as well as it does
today.  Should be easy enough to test out by just unloading a module and
then loading it again with this patch series applied.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YaNi2RkiYdnoEDau%40kroah.com.
