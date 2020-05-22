Return-Path: <linux-ntb+bncBDGNZTVZVAFRBKXTT73AKGQEJGYT7QI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id A830F1DECE7
	for <lists+linux-ntb@lfdr.de>; Fri, 22 May 2020 18:11:23 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id g22sf8209468plq.11
        for <lists+linux-ntb@lfdr.de>; Fri, 22 May 2020 09:11:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590163882; cv=pass;
        d=google.com; s=arc-20160816;
        b=C2IWSaFK0TUCrKnSPX3CILaxUsfL+tD8PwzfjiRX+6xorFOtaDwdD1lwmJ8+hDM9u5
         lmjs8qbR3SPbq8DvDtoAxPzTdxQJXlu9+KPkKL6azl/b7DP4u4Q5w9b8ZIgBwkFyRxTC
         w5mtAi+VaPcBoK7aQaQqjV/iPHm2SXgBgU8BLMCk//502kpnWG+WiaNH677zKRCWfBxO
         /1qnbjqOCqb3WEunfo74ytwWO6ONv9ibVCeYbBFc7ypZG5ukOzGPhZ/7InWe2hpspj8C
         jFUtwPiNV5iXBiBcSmcGV4LwdQjosTpKQC6wZIGpmP4bahTdvD2wSmxn8nGo624lbZ3/
         F9ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=qePE1AwHdOhb8XimwnJes2HbDAlG0XmLfDRCooREgPE=;
        b=YSJ9w/JFjv0aE9V1kZ2k0e5cByxT49RpD9qG8EXRUhBTffUxKa1dU+ziqhOCG7PtEE
         8to4EIecKTaSSxrz86OcivDIg4re/X+Mbmh+BZavPhz+A52cMqaeqdAdQjnqLxdcRC8E
         i0wLqqKS/QeJTZLeTp6Tsvkq70zW8k6gsSpkLdGD08xevoJ8Ym19tAEHNjzZlrgLkrnM
         wElhFLxeZBK/hqjd61wLH6AitBBC1vlwuvENWTtT8OBEn6Q+v0HPmEJ+ujMEnlYj6lck
         b5Dth2bB70ZQU0LxMWBPQ4goB4Wl9F9xeDJjK4z4U094WleBFV+zPROdDE2xoOTQxRx5
         IxmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=anRopDlS;
       spf=pass (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh+dt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qePE1AwHdOhb8XimwnJes2HbDAlG0XmLfDRCooREgPE=;
        b=N/R6ArRVwzuxbo4wVbH964bH/UjRrNjn5lWsDxoGkkurya/+ObJZYzG6ZOEEmeLmBd
         NVSA37q8zc6u/qhe5fTq+ofuyzLPIDn5PXx/oizUlrN5LFwbA5+4G2C1rR71H9l6pd0j
         axjlEkzJAv8dFc5GATZltMeb5Q4JxPwo3zLcumFKvyhqouHysCFepfDUNeO70IV4Jfik
         0tJEl1YDOGqymlpoQJqN7ghgNUSNc7lc8Wf+iv6AAfSEVTmIEaHRtFxhKbTwRJhRM22S
         YTPISkfT6cI9a6w/95mHxsgWi34rMhg8oDNq/LIb9aR4QcHA7P46PxiIrs6lC3OgLLAa
         CSmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qePE1AwHdOhb8XimwnJes2HbDAlG0XmLfDRCooREgPE=;
        b=FofDsU1CUfLfgdWP/eHyge9Ev866Iw75XcpLT8ihHEN2+sRDo7ETtEhYEVcs5Rz4e3
         NGJ4hpOFFFbPmUamLNyvizKsoRHlIqtLeRk2PRrgLzdHWmj8TU0fgJxU3icsNlcBBc+8
         rQz+oZAzA+hdEMVxragNNvXcPCW0saXJmn+qUe4KhNv+gfD+0fniCUk+TjkUNnCjYvRp
         cWDzTbb3I0HKaVDZP9qyIxfkOtQXekFwCT0zFkiE15vPJaHBK9Cb3wHvDvJb8i8mJzag
         fmh1pF+oBf7CPb5qvrOXq4kjedCuiQzjgfocH4lEcp5wJWi3BxZ+QMVJ6D8OTW9JsNj9
         +sTg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530dQxAcPlEOWo2R/bxOytUhDHTKoP98qwIcbRzlaJIOxJHQpBmJ
	SLR2KCzz8+sxJSOmwHwtZ+M=
X-Google-Smtp-Source: ABdhPJx7pZFCChCmeTVH0hpMP/moEMa+BFlKckfmqkPfqhEka8pRMUwL/y8f8m4Sdfp/nukBamR1rA==
X-Received: by 2002:a17:90a:a484:: with SMTP id z4mr5188404pjp.214.1590163882266;
        Fri, 22 May 2020 09:11:22 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:e116:: with SMTP id z22ls490989pgh.9.gmail; Fri, 22 May
 2020 09:11:21 -0700 (PDT)
X-Received: by 2002:a63:387:: with SMTP id 129mr14315926pgd.117.1590163881737;
        Fri, 22 May 2020 09:11:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590163881; cv=none;
        d=google.com; s=arc-20160816;
        b=Ran7NZdaZaoO78zZsnhibmIBnDCpe0rXRPzzU0zsxcFzDZFnu85BcsS1sWWTTlvhCU
         WcUaouAAgbPlY1o8JsEqGOffOgE24yMfBJWk3qauHS8qvcoywOvRLgbFYEv0NLJK9hyY
         U9R6X0FSmKJZM+LuHh9PdqTUVPeoM5+BKR8fQwFHnAD5g/2RXB6LmStOAsggght4nRDr
         Ag1Mnespv3kNjm7FbMY3wT+esExlPUi5scdp+VfO396UXCtDe4f7Ew5V55RvJNxldtA2
         UxoUR21ZX0jfqWartzVudAeqlCiMakgrTKVsydk7XWoJcgI7nyOMYdM3Hse8ibsEm6Qi
         rGDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0JTmKNCOSVfFXsp/l6r6vK0A1aX62Wnt1tZs/rKDZpY=;
        b=zmzuglSQANWo38e+o+8dec4nO6jR3/gAuMvvC2Sl5JHP0+uMM8p3SQzFVerorKfCqc
         ClyfA38Cf64Kbe86oGDbuyEXJkBuQTItnN+sbEO6OGhNNh7xZSgIT6dQe5pU7z83NFPT
         r2kyNqgXUtSqCFsOglz4iNSOU9lzS4UM8Ld76X58mHAt9XdEh53ACQSvuHncV0ehWGsY
         wio9ygofeoY17lhdGqIGTscIKj1FCa8ZyYuOB7l1/qzsHE7EPaTcQy0DbT2F0sQNeFJo
         FcvOO6JawF78vzBy7+MeK89pH8IfRFvkvbjezEvkT2b3LgbIixonGaOC2FMuL4+PTBIe
         HYhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=anRopDlS;
       spf=pass (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh+dt@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t132si82656pfc.6.2020.05.22.09.11.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 May 2020 09:11:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 55A8E207F9
	for <linux-ntb@googlegroups.com>; Fri, 22 May 2020 16:11:21 +0000 (UTC)
Received: by mail-ot1-f51.google.com with SMTP id h7so8633973otr.3
        for <linux-ntb@googlegroups.com>; Fri, 22 May 2020 09:11:21 -0700 (PDT)
X-Received: by 2002:a9d:51ca:: with SMTP id d10mr5587167oth.129.1590163880607;
 Fri, 22 May 2020 09:11:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200514145927.17555-1-kishon@ti.com>
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 22 May 2020 10:11:09 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKxe5FtZfiQKcQFFLOM5F52kx-q8vZspPTXhcWg+3rJvQ@mail.gmail.com>
Message-ID: <CAL_JsqKxe5FtZfiQKcQFFLOM5F52kx-q8vZspPTXhcWg+3rJvQ@mail.gmail.com>
Subject: Re: [PATCH 00/19] Implement NTB Controller using multiple PCI EP
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>, 
	PCI <linux-pci@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org, 
	linux-ntb@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=anRopDlS;       spf=pass
 (google.com: domain of robh+dt@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=robh+dt@kernel.org;       dmarc=pass (p=NONE
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

On Thu, May 14, 2020 at 8:59 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> This series is about implementing SW defined NTB using
> multiple endpoint instances. This series has been tested using
> 2 endpoint instances in J7 connected to two DRA7 boards. However there
> is nothing platform specific for the NTB functionality.
>
> This was presented in Linux Plumbers Conference. The presentation
> can be found @ [1]

I'd like to know why putting this into DT is better than configfs.
Does it solve some problem? Doing things in userspace is so much
easier and more flexible than modifying and updating a DT.

I don't really think the PCI endpoint stuff is mature enough to be
putting into DT either.

Rob

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAL_JsqKxe5FtZfiQKcQFFLOM5F52kx-q8vZspPTXhcWg%2B3rJvQ%40mail.gmail.com.
