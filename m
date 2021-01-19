Return-Path: <linux-ntb+bncBCUJ7YGL3QFBBGWOTSAAMGQEMHJGK5A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BD02FBF24
	for <lists+linux-ntb@lfdr.de>; Tue, 19 Jan 2021 19:38:19 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id t15sf268242ioi.14
        for <lists+linux-ntb@lfdr.de>; Tue, 19 Jan 2021 10:38:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611081499; cv=pass;
        d=google.com; s=arc-20160816;
        b=r2I/+oEfvLI9ZP2Rpc28NL5dgDgYDyX7aYO8hKpDj/xJ+XQjq1qe11ozPd9HpcT+uC
         mPchX/XgYybFIlTk2+S1+J1OTMSm/ycqL+wTZUT0Qv2wTn62hJiu/4Z7RAXdpUkhsusU
         kfiwIH6Paz227xIHMfO9HC44o9DcXQRj1i7ReeKAQ9hFrXWdjoYaMJ4zHZDH5h7U8zMW
         jq580Nh1+wt97XLYo2RyAmlxeDbBdLUCgb2Y9OY0eXLOzrtrV1quk6mYBZJY680vP5cQ
         t64n9wRr8ie7VWFJ7umoRGdRt96xLEZ3F7m7JyuSeEUigDWM+DvjRWktEt5ejCQ0mZmp
         FVwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=IJohb9u5kfWd27/Wz5if3EQX6qAJfLJSYE1uQd1Z9VA=;
        b=zfgLl6jFzZXGSr6IxmziK2Kou36/EiMvxFkY6c3UtwETIb9UOGjxR6+aqRftEm8U0Y
         2Pv/Acf9UGs/UM5t7cVfQZST7ZmilNSzeBgR3hVXuNeQ4S+ORQIdVbFt3R6ZCyaTgmbR
         2jz8CCGXvMqUqFdD3suqOza2Vw7rK92KypRaSEEmQBe+lJ8rEzKunKkxT066OW4sjR0c
         d2FPQUWaaPjVMdQO6dY3ZQqjoHdeCNTjOJAOgSwUwzwBDy8koSCkkxwINe4SWCCSKlm+
         qAaor/2uQqkqkYbl9BKT/77gYzy/CeRy+4DvnQ00GcjHYzIF0aRwnSbEK9tc5RRfL5gy
         A3cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iDjLlMJ5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IJohb9u5kfWd27/Wz5if3EQX6qAJfLJSYE1uQd1Z9VA=;
        b=bbmr/UPHgh5ReBBabVqqK0kPeBT4CKvFNose9eWHShDTSNenvPBOFyr+e7Q6pUrg5i
         pg666HXpe4WdT8tJayenx4NlA+njcUV5dwkstNjhzHLIQkIEELYvCyKUA40DTxnPBOCJ
         kB5D6V83KMR5ovdIZXBEHcuJTXm3Z1OFNMUyK3ratqZYgLyuKAVznqN51WMTz2p+NXDQ
         uBXOZ4rO0cUJL7xrMFTC7pC28DNWe4fMfobgw9PwWopJ36wzI8U7lgFrKW7ozCnr1wH+
         4s5tlsLFEJWt9xJqk+x9/Cg4HmnDuGJZcIEr8TG0VuopRP2zroff3o1gD8v+v1okF1pP
         hTgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IJohb9u5kfWd27/Wz5if3EQX6qAJfLJSYE1uQd1Z9VA=;
        b=kJO1sLks2XW6m6MgStwnvz1p5MSEVWC4x2jg3soe5pbdRaV8sRVp5flkM6veJitxxF
         VnhB4Lh+oDYT4d3gogGAL72ULvgJ1NeCBk4qLsk9FVH2qT1qjemJZd0oB5fwW+2da/Tm
         EsSolNFdkfPaqQl3xpiw92qb6McA4GuhFOInl0SXCOgToz5nwIyRBxpJJVRr3Du4VlEG
         MeG1wn78gjBARBBRysJwye/I/fzEiwZ6YbZ3+Nj5UMBQRtcerP1EK7PcMtDyWqaDpwzc
         tT6l71lPyJxrPZkJZ1mlc40GAECF3byDzJI62/3M+cjsFjAerxTGmER0zs7cmdb/hTGC
         y8Sw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532joYoJDsFMebGqn0FKJJv7rcqsD22HJjXt0CZfZabbzrBqC7II
	k6ka/tQv2ywvUoZQZU0qpfg=
X-Google-Smtp-Source: ABdhPJxUL0ITch40mgxn3zm07wVbha7uC363dETevAVQ7yQSfI8Au1QKwsJfeCXeid5ZNblEAfrNHA==
X-Received: by 2002:a02:63cd:: with SMTP id j196mr4594124jac.61.1611081498715;
        Tue, 19 Jan 2021 10:38:18 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:dd1:: with SMTP id l17ls988322ilj.3.gmail; Tue, 19
 Jan 2021 10:38:18 -0800 (PST)
X-Received: by 2002:a92:1f87:: with SMTP id f7mr4446170ilf.0.1611081498302;
        Tue, 19 Jan 2021 10:38:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611081498; cv=none;
        d=google.com; s=arc-20160816;
        b=K7bsQZVrOEnwpeT5UHxnd/35L4tgWlaMADvXES1Gun7qvBo+vESttoCwxjHFJxmLWE
         yaYksFcySixBgDXt/KK+vD43nagosHAKZfkzXgcyIvwRIrxv40icUSfp3sfaM6G2jJWO
         2dq6cG/fjX1Ev8otvr+V5rNzgRs7vnt9Vl/93RvTL48eT96wzZVi0z/zgZt/n/mwQvRu
         HPP4mYFcB42M248FNXCH4dAnzAEnmObWAB4dpmkwrQDjEin7iwSiomEdsrUwPXQr2uZx
         J73cifV7mdvDzvBBo2Y3dQmukmje+LU3zCZR9qHwQa748IspSrgSvwEcHa0os0Xtbzy6
         WvzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5H+mVK+hh58UBpkTdhKy8F1TQrCrsjMhYsz4rEtVqPM=;
        b=toJLCmk3Ef47QuWDfZAbBWAPqnr7mHusKIERTgpn8W9EYaD09GivA0A1DiwXvickQn
         UEfFgNkX+musQWL2LJ9zusjO7ua0E01C1lS7p3nn8bo3MRlrk8wsi0qOVUcmAUM95wj8
         BR2/raOM++q+kEffm5LgbwqNZSSAR6RZkVG626OLDiEMs56NH8PCa8kvojdCR36AuPJH
         hU8SdT9eeW1YhZfVGuo1QKlb0TpRJcJttWdlIu9pNzrbI92g2ZGDXyDE3Be+4XsMj8/6
         ax+tZ1utCceIcxsx0/s64P4DnT196Cpp4WuBcJjAmFKHBr7hTL/lbV8sGZNM1Jh/ZIFO
         kEjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=iDjLlMJ5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s10si1538815ild.2.2021.01.19.10.38.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 10:38:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A93C320706;
	Tue, 19 Jan 2021 18:38:16 +0000 (UTC)
Date: Tue, 19 Jan 2021 19:38:14 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Arnd Bergmann <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: Re: [PATCH v9 10/17] PCI: endpoint: Allow user to create
 sub-directory of 'EPF Device' directory
Message-ID: <YAcnFiExcr5o4FKa@kroah.com>
References: <20210104152909.22038-11-kishon@ti.com>
 <20210119183405.GA2496684@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210119183405.GA2496684@bjorn-Precision-5520>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=iDjLlMJ5;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jan 19, 2021 at 12:34:05PM -0600, Bjorn Helgaas wrote:
> [cc->to Greg]
> 
> On Mon, Jan 04, 2021 at 08:59:02PM +0530, Kishon Vijay Abraham I wrote:
> > Documentation/PCI/endpoint/pci-endpoint-cfs.rst explains how a user
> > has to create a directory in-order to create a 'EPF Device' that
> > can be configured/probed by 'EPF Driver'.
> > 
> > Allow user to create a sub-directory of 'EPF Device' directory for
> > any function specific attributes that has to be exposed to the user.
> 
> Maybe add an example sysfs path in the commit log?
> 
> Seems like there's restriction on hierarchy depth in sysfs, but I
> don't remember the details.  Moved Greg to "to" in case he wants to
> comment.

This is configfs, not sysfs, so I really do not know, sorry.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YAcnFiExcr5o4FKa%40kroah.com.
