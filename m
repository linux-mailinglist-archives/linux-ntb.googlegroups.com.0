Return-Path: <linux-ntb+bncBD6L7CEQSIERBKGTQL4AKGQETAUWCII@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A8928214745
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 18:09:13 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id t7sf22464577ybk.2
        for <lists+linux-ntb@lfdr.de>; Sat, 04 Jul 2020 09:09:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593878952; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ds5bW/nxZFyChvIygc+NC9RDoW9156ImEMWGmbQfUyG6nCDvhAYn2O/2wFvCmMwuvr
         rZKoOhePJdiTzbVkY5sBq4cDV6EBMRlbbg4LNbTCSPpwTZF/FprYBioMxXgVpk2jIybu
         LZH4gfnqwsJVGYcoOUsjsuETTEnoaAdaMPf9r6NDcZa+9d/5uzQFJy7hEesLncuU4kh0
         FW6IGM/YfOBr0RzlCZzCSjZhcdJUlOONbQIyUWbrjgnKxUNYxhcl37PcK35atVdxvUWb
         m2P+coA+d0Wln7XxqRJhLERnGWSPFoigPSF3RCEtnXDyO+5SKef44KSu5nwapbij9qTW
         WHMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=GqML8F8XOBy79uGZ+VS0mZJQJqTCyQcgYF30cKjtL1g=;
        b=AJTts7Hov9dD69XrMmMgtqjRVc0takqptCo0Ofb8BdTFrB2M3EHGHLUzhlhMhRUViG
         rgKhpBY9M5i23HAB0pWH6T4VE//0nXvcvDTCB/W+ZjURTEIewMZM8TY2dVOrpczMsFgQ
         hQvkmfrImbhs/bqXL9/YqIfP6Oh5khVyqHL/IELy9L6aHUeeCKQM3aUfltxACalNsDKz
         +oIUs14CE9kVnAKtNzPob44Or/D/A4xqdY7JLfaBlm1KWUBYNkgMhJOzayunZmOEOqIZ
         UhoEyRO2a951vfcl4c2/MpL2oMg4IxOe2SVegOj3Vtq1kJhVg+qLa0EQQ/zRPcZhgp37
         n9OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PBrbiXvD;
       spf=pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jic23@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GqML8F8XOBy79uGZ+VS0mZJQJqTCyQcgYF30cKjtL1g=;
        b=jlvwp5R1kCQJFhSnKcFK5/bAGMCCMPweeiunR3lXrwIB9DUoRW1nNy8B53IacLhi0N
         qzsQLh5sXD2A/yFqnIfLBNgXar93NItJvMJQ8mB+d/yh1xCYCRVWPVaWnv5UfGw1K2Ky
         bieT/a5K/EB4Tc/wvwQ92bXGr9eo9VucvNjsTb2ZshdmDpTzR+o7BBIYa6jo7Cl6UQA3
         YItsTps4TA5g3qA/0Tk3vZ/F8nrLKzm6d3LAKErhfVco2TlHxiGBkg9+xP6cwcFNyEtl
         fs3TDdcEhXcKArmCfVdlNl43RDDWgL1TsbIhJwzoyFGqL4LoNeLQaS2eClD7ob/Qnf+p
         JuAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GqML8F8XOBy79uGZ+VS0mZJQJqTCyQcgYF30cKjtL1g=;
        b=kckOtX+k5tVritA0r4HvbIyNq50XM+DL61mlIsFO9LhXa0KYe9BCjU97fuqib4bAtK
         HLvCK366YxgN0CwDKdeER/uUVQZ23lAALpHq1bwx/F2oSBQonjyedsQF8TGcLspm79SX
         YM39EKHLqO+09SAKmr5w5FD9l/6xvSwhdgw/c4nDLgIr1huiyYFnjyaW6nWt51fEdlZW
         bX09Q1Ju15uJSbNp4L43uTFxUg/NY8ibE1i087tGORUfr2XbBB+OnteawMMHAjSFdkST
         d7moKnS2wu/xMISsyfH0tHCiUFlWOecGlSgHi9NJjCge48m17VtDYKxPFUYUK49Yx3qU
         BDZw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533Qa2bcrgsG12LnSvqbuPaJB+yn8iM0bNOMyjKeQR6FGpsAJaOy
	AnJB9ifkNnu6WZaetT4HQjQ=
X-Google-Smtp-Source: ABdhPJxUEC+lNONMePPt45KNhTK69yMUW6mocK5vpd9RYdN2IrozMkF5MXIfuYOvmWjTGY+LMia3WQ==
X-Received: by 2002:a25:d297:: with SMTP id j145mr69516552ybg.18.1593878952705;
        Sat, 04 Jul 2020 09:09:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:7003:: with SMTP id l3ls4539324ybc.2.gmail; Sat, 04 Jul
 2020 09:09:12 -0700 (PDT)
X-Received: by 2002:a25:3789:: with SMTP id e131mr48826530yba.417.1593878952385;
        Sat, 04 Jul 2020 09:09:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593878952; cv=none;
        d=google.com; s=arc-20160816;
        b=zIndFe/aUB+fCUlUEVq5bzpUjAUPdpd6TFZKk8ra2QKT2OiaeZ+F1EhJNKxddtrCeL
         OoIRoGRH6jAy+NlsPYqiplPvmmS/ZDL62Jyx5QI8I4NYZ8zUe8+EHrceFCEmzx/RIh01
         m6KktAUj7H15VSrpocQrCJHENXnvUfVmiy3zO1hIo5Ri8mLG+FrotUQ47hzPEueXwu4J
         gLpm13qy3gCQcqhjX6vVVgxgK2j/iW0Xfj+ezHJ9M7/F7phieqn9DZQLvhRiIvrHXOnv
         6atVsvtfFn/SiQR0EpMJU7y4ZWQg2OSzk0RMBkHFEAe7jSBGukneQeywibGseekOZHj2
         I/BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lcHBYvmbQC1Z9hEGLEcaBbIOP0KQhHzbmWut/mYTllo=;
        b=csB+C+ttNS9FaS2jKnQOOiWM6qH7EOzcC5MdtJosMdRaoM/qjrbRzappkpPZy3TK6L
         OPsSEIpfTF+juRz2ogK/ZZARRJcxkC/W7Sph9rpSzy1maJa371hvl6/bdIHpccXo+FQl
         ZXYOJ8gTUOcJTAZp4COcEKMjAljPQT9X/jOxcDzAqJjiKPYGx/cc4aZIwd1ROTWeMyCT
         UPjS7PndjxUDI0XF6tRMEw/Ob6dfQ+odKn/V+Vmf/rWzzu2CLjXEfVfSHSUUD3piKdKY
         S6w+YgyXBnkFlWWlPsI4AhF1V6xR4vg7jSE2lnPMkQggVkX7duBDAnftj63HZnUBQOvc
         PUeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PBrbiXvD;
       spf=pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jic23@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v16si1029454ybe.2.2020.07.04.09.09.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Jul 2020 09:09:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net [82.4.196.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DDA2B20739;
	Sat,  4 Jul 2020 16:09:07 +0000 (UTC)
Date: Sat, 4 Jul 2020 17:09:05 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-doc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, Luis Chamberlain <mcgrof@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, William Breathitt Gray
 <vilhelm.gray@gmail.com>, linux-iio@vger.kernel.org, Mauro Carvalho Chehab
 <mchehab@kernel.org>, linux-media@vger.kernel.org, Jon Mason
 <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
 <allenbh@gmail.com>, linux-ntb@googlegroups.com, Dan Williams
 <dan.j.williams@intel.com>, Vishal Verma <vishal.l.verma@intel.com>, Ira
 Weiny <ira.weiny@intel.com>, linux-nvdimm@lists.01.org,
 linux-usb@vger.kernel.org, Eli Billauer <eli.billauer@gmail.com>
Subject: Re: [PATCH 07/17] Documentation/driver-api: iio/buffers: drop
 doubled word
Message-ID: <20200704170905.7e596707@archlinux>
In-Reply-To: <20200704034502.17199-8-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
	<20200704034502.17199-8-rdunlap@infradead.org>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jic23@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PBrbiXvD;       spf=pass
 (google.com: domain of jic23@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jic23@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri,  3 Jul 2020 20:44:52 -0700
Randy Dunlap <rdunlap@infradead.org> wrote:

> Drop the doubled word "struct".
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: linux-doc@vger.kernel.org
> Cc: William Breathitt Gray <vilhelm.gray@gmail.com>
> Cc: linux-iio@vger.kernel.org
Applied to the togreg branch of iio.git.

Thanks,

Jonathan

> ---
>  Documentation/driver-api/iio/buffers.rst |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- linux-next-20200701.orig/Documentation/driver-api/iio/buffers.rst
> +++ linux-next-20200701/Documentation/driver-api/iio/buffers.rst
> @@ -88,7 +88,7 @@ fields in iio_chan_spec definition::
>  The driver implementing the accelerometer described above will have the
>  following channel definition::
>  
> -   struct struct iio_chan_spec accel_channels[] = {
> +   struct iio_chan_spec accel_channels[] = {
>             {
>                     .type = IIO_ACCEL,
>  		   .modified = 1,

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704170905.7e596707%40archlinux.
