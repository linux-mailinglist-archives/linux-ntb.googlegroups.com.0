Return-Path: <linux-ntb+bncBDXJDZXNUMORBHM7XOIAMGQESSIMTYQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 659C24BACD9
	for <lists+linux-ntb@lfdr.de>; Thu, 17 Feb 2022 23:43:43 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id z20-20020aa791d4000000b004bd024eaf19sf571443pfa.16
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Feb 2022 14:43:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645137822; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bp7Gtv7kciVxdNa6mDG3A/mQiIXZo29v9KRfoVXjydkbp8ddf7FNu4VXq/oyZ26Fzb
         zi8lxcuh2/MBBYBkEiEjaasa+/56QNBXZF9/4KdakVez7HUY0eYGqwuqATmuf6XGYcx2
         ObyTd2B/aMj84U2HBhOinu+ggm7Q2/IaoirILMRFsvo4qNaeHpgG4mtk5GkQ8ZEiRXN4
         1DaUg82j6DR6rZyWsmA4NBU3UaWfiYsQDNzCTb49On3LQPOc5raElIU4aFSulpsoLIUN
         X3tyqoje9pRCxy+1DY3/gINkBmSKYdRGmO0Sz/jy8m1gqgIB786FTOan1GvlXe26t8ff
         TysA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tawsI4uFztkXSGxHaPsmTZO9KqSUgQx/PXdxZlAw0j0=;
        b=n+sX4/+BBijmhukb1Av6ePvKC/i6eFOigwBL3Jauj3dgcgbjUBaWNW1Qf5Rbjk0K41
         vUGZmG+oV/s1dRNP3YINX497uzKyiao6F58dmdDedhWjW9MaNUvu7JY47LD49hPuNJK2
         taimckZnnMy4zi7N87xQXagPQw31ciP/M3NyuskRKpA+1D2azj7+WVXsDyakNNRkujYu
         Bk4RzOIp7NDb4bLy4CFmguLM5U1+HzOxr6pRdf6V3PXyvMqo1AEkdx8urSDwNK7pkJyS
         FO6kf4cRujzrPm4QI4WrUJHtKVySc3QT1tmZFsP/rDAGlt0zIbyIWToO7hBIqyRF5oDY
         AqxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UWiEHEsZ;
       spf=pass (google.com: domain of helgaas@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tawsI4uFztkXSGxHaPsmTZO9KqSUgQx/PXdxZlAw0j0=;
        b=aY5TEjOcr9LR6zYqN6G4OjsOWZ4iTV+wVZ5yySdhOLrnwx/izY7wEKrYlT7QGjNGJn
         Gbd6dlAXJGKQrqdHc5XZgWwFK1BPrEUklBkIclmuQgFI4pHQtCZ7/E8a6S3h0snd0gh0
         RyjMC/V+0hEJ51oHNyo9061z5Vfb5p0W1sHKv6uwNOug5Kstj/NZrQmy/IineMFBOAuE
         tY9pmV6x+A7sJEAQlazWb297nuMQ75e75QuglO05jDiDX2IDAJnbHy/BgoY6czUSn0td
         uKeHe3l2PbpfTjYoPYo2WbP9n/S15hnJyU9DG1yGnifyBhiQ/u/w2+szn9VeKiOkoHTl
         HiFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tawsI4uFztkXSGxHaPsmTZO9KqSUgQx/PXdxZlAw0j0=;
        b=oGiXRaWJh8GgQNHae/A0fZbj1rsmGZH8PS7tiNUeCGPzXpKlZTSsG/0HT0bUVNAJLp
         CyJmIADgFp0uvQ2SPKZ9dXYdGtsXNtjOimzHRtIDIC4e2x4Cr8JF/PCCoeWn0btMWUmO
         6cmLl8brMbRLPg4SL1v7PLf2z49ypu7nex2Wi9ififxptizMRNDV8O0gYeM/6MilI2Hu
         WUNyQRsbGbLBjF+u5ozewjAAX4bqyrhW48j6pp/x9LIMYqX4xjp4lYw5UX35rlKMetU6
         BCzq4p/Ume0qwqvrEu7O8l0y9ee79n1E1hofKNpjy162fOkDomPR4wK1g0ItDhsnfa4Z
         3ZeA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532OT2as2JWG40o0/ray2COVgiD8cDZwHPg+fl7eh0oU14V6SKvE
	nJ0L1gr5SGGKHnMGmqFWSIA=
X-Google-Smtp-Source: ABdhPJyO4JwpbLg8copKe8FTf/ZbJ75s2hR8zVKlliY/RQlR1vmWyIy7QmPW0dy2MvD6dbfvMrOyhw==
X-Received: by 2002:a17:902:f68a:b0:14f:308f:ed3b with SMTP id l10-20020a170902f68a00b0014f308fed3bmr4728052plg.147.1645137821865;
        Thu, 17 Feb 2022 14:43:41 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:903:1ce:b0:14d:880e:20f7 with SMTP id
 e14-20020a17090301ce00b0014d880e20f7ls2638645plh.9.gmail; Thu, 17 Feb 2022
 14:43:41 -0800 (PST)
X-Received: by 2002:a17:902:9f96:b0:14f:1b7f:d5 with SMTP id g22-20020a1709029f9600b0014f1b7f00d5mr4703160plq.126.1645137821218;
        Thu, 17 Feb 2022 14:43:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1645137821; cv=none;
        d=google.com; s=arc-20160816;
        b=G/K9pCw0oFEH9G3qvJACX9It1BKOAow75H9f8QeHpeSHWB9xfgbSYIvfHa09+iOtdt
         w3h6BSLLaNLK2SNpmVUSoJK9OCOTVW7s2hK8krZ00ij32T6Grmr5h3r9q5DDsCOmylF7
         SOu9y7DjQ0gA/7MA3RLUk/r0ukiwPHWMR6+7zeJhSj2G7fSI2RlCOILN7wWQ5sd8VZMp
         25VEMeQUn9P/+TQ79kPwkStbBFxc2S1AWj9wQaT+K77JfvUHfaOwQfeS8DNpKq98SEen
         ygpzSd5oOpUVnvfIdVD0csK4LBxSEXxIrExzOKDgMsy7EnYSW3nPw1oDNltoZwQbiFwK
         L93Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=HHKJx0W8M/XH/pM0SWeJqIHy5yIye1lxFaQfYb+rwHs=;
        b=wRatOwt5QfekzbRUi1bitUWl+ZMTTIj+dIit+Hg1SCD9i8WAsjCwqcnAY6/KvySrWY
         jPh3vqI/pVGyjbgpa5EeIyNNXzRUGDbemTH3fLkTcqwixrxbAocM5XcvjASesSP1WFNy
         JmeBos4iqE/d+dVDmuxViCP8uFy3uDNAixKFnUU7qIiD9/RPg1MWzqN9KGKrcPKs56sV
         aQzwp9h7rUzplSyRIBjZdUge5+Vybj9sev5TcDoVt6C1F4HM0KFtDPdqFYn/bco7k/IH
         xe8VMnb/jqqu2aibo6W2C8BlESE4/XCXTvuvnSpRKIR1KuZrNs/FJ1fYx80OUb/kshlb
         djvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UWiEHEsZ;
       spf=pass (google.com: domain of helgaas@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by gmr-mx.google.com with ESMTPS id bt2si108051pjb.1.2022.02.17.14.43.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Feb 2022 14:43:41 -0800 (PST)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B610E61790;
	Thu, 17 Feb 2022 22:43:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D83BCC340E8;
	Thu, 17 Feb 2022 22:43:39 +0000 (UTC)
Date: Thu, 17 Feb 2022 16:43:38 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Zhi Li <lznuaa@gmail.com>
Cc: Frank Li <Frank.Li@nxp.com>, linux-pci@vger.kernel.org, kishon@ti.com,
	lorenzo.pieralisi@arm.com, kw@linux.com, jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com, hongxing.zhu@nxp.com,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com
Subject: Re: [RFC PATCH 2/4] NTB: epf: Added more flexible memory map method
Message-ID: <20220217224338.GA311331@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHrpEqSWZaLan18+s_h2fLeKxqOv3yM2Zo7hr_P03bBBKvMYVA@mail.gmail.com>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UWiEHEsZ;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 139.178.84.217 as
 permitted sender) smtp.mailfrom=helgaas@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 17, 2022 at 04:24:56PM -0600, Zhi Li wrote:
> On Thu, Feb 17, 2022 at 3:59 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
> >
> > [+cc Jon, Dave, Allen, linux-ntb, since you need at least an ack from
> > the NTB folks; beginning of thread:
> > https://lore.kernel.org/r/20220215053844.7119-1-Frank.Li@nxp.com]
> >
> > In subject, s/Added/Add/.
> >
> > But I don't think it's quite right yet, because this doesn't actually add
> > any functions.
> 
> How about "Allow more flexibility in the memory bar map method"?

s/bar/BAR/

Are you saying that the BAR numbers were fixed before, and you're
adding the ability to change the BAR numbers?  It would be useful to
know what sort of flexibility you're adding.

> > On Mon, Feb 14, 2022 at 11:38:42PM -0600, Frank Li wrote:
> > > Supported below memory map method
> > >
> > > bar 0: config and spad data
> > > bar 2: door bell
> > > bar 4: memory map windows
> >
> > s/bar/BAR/
> > s/spad/?/ (I don't know what this is)
> 
> SCRATCHPAD REGION
> https://www.kernel.org/doc/html/latest/driver-api/ntb.html

Just spelling out "scrachpad" is probably enough.

And s/door bell/doorbell/ to match your usage elsewhere.

> > Please make the commit log say what this patch does.
> 
> Does it help if attach ASCII diagram in patch 3/4 or cover letter one

The diagram is nice, but doesn't need to be replicated everywhere.  A
description of what the patch does would be better.

Bjorn

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20220217224338.GA311331%40bhelgaas.
