Return-Path: <linux-ntb+bncBCUJ7YGL3QFBBYWERCGQMGQEU5MOIXY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9AB45FE7E
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 13:19:47 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id 205-20020a1c00d6000000b003335d1384f1sf8614260wma.3
        for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 04:19:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638015586; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wcuy/p+JECbhNJt2Fuy0pGcpf6v5ZCd1HCCnB4A9kjurT4dl8OgISMBAWkhyP+1z9N
         JvYNPJLOgNEpGlAnM5VXnFZAy58IMlaulzE33N91Vi3oFFBlmyA/gIkr5OEq+o3WJxrG
         0OD7QCpp7PQIpX2EatgKjlx53OIzyfS2Gam7VRrgp06iG6xIkPAVs9tI+2rHeNt8piDI
         nhqpGj76vb0U/46get0zm3Le5YCCtg3QKfZ0a5WBd5SvETMtWftitjFID9cKeyXIG+1m
         6T6PTLs00fimXfmfTnSI+A39rxnCcjOJDIFBs0zUIddt572QaN5RcgjHl6uqvz+uvG8X
         GUqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=VagN/YbFyeWEcGfSoDza+hg/DXqrq+NpA22IQsyobRg=;
        b=IHE7MbjCHTvg+ELmnDoSDRJXcrNcj9kfXMNSXNqI8xLi1/MpN2aEqyljJnrnNnsi1J
         LhDY4xoFjqgv0o46/LlgpXNY2fOsT67FvyzsL4Tjaido9cauMMWwb9a4lN4m3X5Clydp
         QyrIY8x2LfdWyTNnMg5WYwJZOcHy4B/23qhAK3JPcymDYIRL/bJvomHRlcJN9sbVJEIc
         M6Z6M8tIWxx6OFb/bbnLYDrWwZXkd8wLp4w2/BZWVahp9FDzUEm21kiqOvnCLk0ri7QU
         FloltbTOVWGrlLLtSJvGg1k+hhuA5FhPUlINao4hugs/UqdqsLE1hceI9EDuZI05o9Xs
         ejkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=mX1Uu04l;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VagN/YbFyeWEcGfSoDza+hg/DXqrq+NpA22IQsyobRg=;
        b=lEHM+mRBcJ4Yu9KGxnzzSRmMq9FmVHk/NgwN/zTrKL7oau2CrBsEHj6IGhbTmnho/Z
         r1eenrSdcS3MfavzsY1X/enqzFlR06UE8vv7W6nrp0QKgpob+y0e4Rf6i6V6+YcJCxxg
         Tcn2/k1+Ms3CcF9L2DXeeRtWwxCfsCgKpvrMl3ipGHgpHVXP1SCIvAnAs41T9s4psRsp
         /j+QzUfR5rSQWiO9S7vYk+7IwgOGmRVpC72Wtkt+XZsw61LHELHHdgqbnJa67Gh1pVna
         cn/rROa58AARP0JFxjPlBRtFMsmcAi4rs6AkcWd6iH2QAoAGUzF28eJumIN8tm1cVNlV
         ggCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VagN/YbFyeWEcGfSoDza+hg/DXqrq+NpA22IQsyobRg=;
        b=j9oSds3E54uIg1tWcTwkSUadMbibJA+cdXrPSeiVZtwAs1atuWJb2A+oiyj0dj6oDh
         W283l9veNKhAfIr5H4mVXnFPwkC0sSosu9jZff+WrapIUA7oCOIwI+i/axywiXaMuqDv
         xVf8/TqOytSj1ZkSvdD7XRCR1xTwCzT0+JoIcv5TdslCcQUtkA0q1U8EPwAD/8AnIapp
         kwoudyOLJzfJk3ib66OSU3toYJ16YjdlNjAtxcWmATqZNG2CNuRn4YmdvdDWwz/jDjI/
         GKee1qDk5DCe0/hcJc0vROLxdjOCfw1Sfmdb8ySF4YSuzlBjbHq2yS0jW3DvFvut4V++
         m++w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5333XJ1oXCQpdkuqi5wCgwdz2Fc+XAsFQ1B7Aof6ltqsofL6IPCh
	AY2IUXHzeFhHWD+FnqfPSGw=
X-Google-Smtp-Source: ABdhPJzwDyrx5ZngadXPJtCL6gQXctg/JBKCIXcNl0aSyfUYLiLw+A6BpPZ7nJsPUeeg6eCSsmFKFA==
X-Received: by 2002:a05:600c:1c13:: with SMTP id j19mr22358755wms.175.1638015586874;
        Sat, 27 Nov 2021 04:19:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:7e16:: with SMTP id z22ls7071095wmc.2.canary-gmail; Sat,
 27 Nov 2021 04:19:46 -0800 (PST)
X-Received: by 2002:a05:600c:4c96:: with SMTP id g22mr22507445wmp.46.1638015586069;
        Sat, 27 Nov 2021 04:19:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638015586; cv=none;
        d=google.com; s=arc-20160816;
        b=OHBh7jbeFlY5XQpbHxxVhvNPawhKIs/Q/pKr3Dcs8u4KvvPcmk/qHEHuT+Ba5GR2Ax
         veap0DMFn3SYmt3UPFXNpoz/LoWVWc5GA2CntCkkxonYfZaVgP+JCy+Kpj+HFEcV+brJ
         k9SR5X4Pb/J4/r/7k9TjRP1zWH7Fzh0ibs9w6WgvZvFKuOpapjYvmsEe68uTGGod2Drw
         Qch08JEcm2D2FzsRlSGAtaOfIp+c5h318XgRZoMLQCi7fNipVgYKM9QJlb6sZh46cEd6
         X/60TEw3t4Vln5cmlyI2CRTPPhZAhuY3HB4Lm8op/qhM9G5d4G6SPB38I0YjOcFaRNWs
         uHeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WnHlpsMUgxYIqqMpDxCT2N1EXFp/oWqiqO2CeGCV34c=;
        b=Ge0GfM4puXu8GaKcNCaVfDdXVdVTe597DvKdtJ4Dsc8S+sqzCcw8gkzLnQMkBQMzBj
         JQXOqWZaMIg1TpwNVlus1rHeCt/gqUGEnnawwqxGAwDO5rCkwE46kiSA/qg1cJVbrqwF
         UW6jSW3NF7AFFMV6y+kFgZ5fcqxH1KA9U7wEA9yTp/m5YaTfL+wyVtpKvNt0T0P2zd+Q
         X+OucTxwn84//uTldQ6YXPfj3g9w2uoP4dLAbVs5gAmdAZ59b8EEeOrDV/yUMYLz9SLR
         Iff8QTXX0JJBoJX0pulWF/960YhIgth58SqR7ZTN4guKM1M2j6B7qMxmu27hrPsd0o4h
         91/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=mX1Uu04l;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id o19si1625848wme.2.2021.11.27.04.19.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Nov 2021 04:19:46 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D434760B72;
	Sat, 27 Nov 2021 12:19:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76579C53FAD;
	Sat, 27 Nov 2021 12:19:43 +0000 (UTC)
Date: Sat, 27 Nov 2021 13:19:41 +0100
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
Subject: Re: [patch 01/32] genirq/msi: Move descriptor list to struct
 msi_device_data
Message-ID: <YaIiXcRABq2E6/sJ@kroah.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232734.349989857@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211126232734.349989857@linutronix.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=mX1Uu04l;       spf=pass
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

On Sat, Nov 27, 2021 at 02:22:29AM +0100, Thomas Gleixner wrote:
> It's only required when MSI is in use.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> ---
>  drivers/base/core.c    |    3 ---
>  include/linux/device.h |    4 ----
>  include/linux/msi.h    |    4 +++-
>  kernel/irq/msi.c       |    5 ++++-
>  4 files changed, 7 insertions(+), 9 deletions(-)

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YaIiXcRABq2E6/sJ%40kroah.com.
