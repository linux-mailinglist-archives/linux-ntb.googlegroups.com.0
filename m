Return-Path: <linux-ntb+bncBDXJDZXNUMORBFNI4SOAMGQEAQ7AD5I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1879964C107
	for <lists+linux-ntb@lfdr.de>; Wed, 14 Dec 2022 01:08:54 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id z20-20020a05640240d400b0047028edd264sf2511862edb.20
        for <lists+linux-ntb@lfdr.de>; Tue, 13 Dec 2022 16:08:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1670976533; cv=pass;
        d=google.com; s=arc-20160816;
        b=MQsGc3NXjO326Z8IHJKezpMC48mrmiX2Fa+BhVWU/bXNR0nq080tasGTnInEZWq6E2
         a8rtoOiqTfVJVR9RAgA5KODqNnsh8z1NyEXPWsekC7EMnF1Ws6HZ5dmnJpqYI3+3yLRQ
         wwsaNwccHSyWyhZY1MB/G10jv0q5uKcIszs5rP3tSCTsKSVC4XMOTCLFWPUPXIUt/NxI
         gY1/K5rrHLN8Z16H82rBf6H5o2iHxN4c6v1Ho/sQ5R/N8RxRXgrzq+gs14OTeqEzm8hx
         YtKPcDbVMShtoNOUfjWAR5eUIOSNTZvSizJdVDJFuqVE9WuJtSZnCga45ZYVt8SWrIFY
         78fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4YmiD1ZxV68cjPx+bES7QHOEGDTBDU3jBFEr8xVxAaw=;
        b=xiE9xVNfkF3P2t0DfgHgpg3xUrG/xiWN0jK3lbUZ99XRQkw+eycL3lUw4wFavSj5ed
         NGrJLkPULpeLyKki2M9Mt1ZmoPwI1SuM4IWLdid+zNK1XSHsJnyaIMtZyLn3TKEjMq0+
         sN5n9fW3ed0NnAMjJZK9zWxQrj7wax+0eOb6Yopjeqhoj/qK7oBGfhYQY0n9lBl0lO5I
         QJg4OV9dmEWRPPsjk5X5b3uJ36iX1/cVea74FbzqaaY0ula4GAJcrYBOHVomqJkuRiMg
         wpqpOGMg6NeDXiLU5jFCQsAof8KnYDDA4/hXrod7EfhrDhZRZwwWEmijyRpullHFOfYw
         YCog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UopKoRFg;
       spf=pass (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4YmiD1ZxV68cjPx+bES7QHOEGDTBDU3jBFEr8xVxAaw=;
        b=MtnK/M+MybaP9+ZUjS9uFm4zsxU+hNKvai8MjA20TE3worrAJ5jctnX0n3y7pRTw+G
         7MLpYF0kFAY66B6DI78+GC0aGxK/KQPpH5bLUwaN7Vm+Nn7llzYYFsy7qhnqakbMrvh8
         V/sJjWWdWtMqB3zGcF//F736u77iXGhQCKrwRew1Tmf9cKo5Pkjw+owaMRKUNkgFdFqm
         ymRkPK7hurfMbLtoRcN/jgO9JUIdRLg1TxCYjFI5dLy4eqWZpcOZMzpyvf3vmHGJ0XA9
         KjvmSSybmcX62IfsonTLbIfKd/jD1TFv57Y/o/CyXoXGROQfkHHllTXvqalfH90GUJwM
         GRcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4YmiD1ZxV68cjPx+bES7QHOEGDTBDU3jBFEr8xVxAaw=;
        b=iB4f8Jrp5/WujMI/SrjonYETujSufLVEKlYWMH95jUwxfG7SvTSHSYuZ1pp8BivJNg
         azZQLPUbVXZC9FTn6cYNP8yejG6VyHOWTm8hs9q7CxZ9bY2QWK5dUW+l6GNURUjLCFpj
         vxqyOgtar+Tnsvp0gn/0bCqEAJjZbXNrYzaaMKskKXvv/K3hdhJTDx/ID668gPlfln/g
         mr+3EmlYHymsE+1hc2tNxvSqNOZR/Vt5YR/LFIsNuZICCZhirScSPkl2FACUNM3y1mjx
         /uS2bOP2hNwp+cMXi30K8TTEcfNno6xO4GEDPED8GynTUFbVAnaosTybBCHAbGb3TAOH
         5XWA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANoB5pkwjiO5gnmeIgVKoBTmHP9hf3Alb5srylvmF/DklSlw2bawazV/
	UoYB7wuRN9A7O24DjaNXO/0=
X-Google-Smtp-Source: AA0mqf4aBChhKc5wVfFXMVowlBJh9k4qJZmc11aD0RMESUNngL7GAhYn1hadULYr+RCOAoFgxjImhw==
X-Received: by 2002:a05:6402:2025:b0:46b:b19a:252e with SMTP id ay5-20020a056402202500b0046bb19a252emr33402185edb.188.1670976533511;
        Tue, 13 Dec 2022 16:08:53 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:94d8:b0:7b2:77f0:9d5 with SMTP id
 d24-20020a17090694d800b007b277f009d5ls10379758ejy.5.-pod-prod-gmail; Tue, 13
 Dec 2022 16:08:52 -0800 (PST)
X-Received: by 2002:a17:906:4e9a:b0:7c0:b292:e56b with SMTP id v26-20020a1709064e9a00b007c0b292e56bmr16580395eju.68.1670976532171;
        Tue, 13 Dec 2022 16:08:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670976532; cv=none;
        d=google.com; s=arc-20160816;
        b=bTDx/+cKjVobYFtzxwcrbMY/IkmIB+ODh0JYEfmYLzFLs9wcJgwI1G85wI/NbRcJ39
         7vIzVCp5nrcN1bPQOOWfOEmSy6MVdbpp6hw5rvqg/eT5K8KT3Qlk5NpRXgYcXYskk/xB
         hw8yzJxFo7u39UUORyR+FP6fOhFPA9nART29awmx37OC/WsVlLtEU+jLZ5CgLTKQwNjO
         An/p5j2smY4rxNs8MhkfYkZNdrkh4KlWDwhvumjA/4bmabGCCsLmi5P80Ux/HsuSR3Ef
         dCo8ZU0/6mTMrlbaV9QvlwY6ipN+1tKXZKMeykNXLSikCGIMCdzXcZUV6gYslZlMpQ2w
         fMEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1I4ieP4qCDHoifaXWyvEPCN9JDv966U9LqtAheQc0Wk=;
        b=ikCkrWYvcZMD5XlGWPyMoHikrXcG9dCcN159pEkmMUdclXtLSFuyrxulsXNgbd1W6m
         nj68GMPVZgcZHx2/hsf/hWqlr89PN+9VWUmjHEZIrIJDMKAwL0SfgbOfnMfFRv/05gki
         y9SCkBW/7uYm25pnR6M89lpt5hX0bT8QBC0bZpetB9qN4x/1iyDW4z3JOISGpJM22nic
         uoBPFHnI4Weu6cKh4zsOyyCb7mBeZ4SUVLvkxwGMcPFndYzWw8bYexbNpmFzagtf8Vnr
         Oty38ZnLtqA5pCUS8J9AKjh3nGZc4Nv0fBSmpFQxJn9Ha8GZZeAgnOnMgkR6uD0sE1qQ
         Szjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UopKoRFg;
       spf=pass (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by gmr-mx.google.com with ESMTPS id bc15-20020a056402204f00b0046c3ce626bdsi641754edb.2.2022.12.13.16.08.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Dec 2022 16:08:52 -0800 (PST)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D48D2B81612;
	Wed, 14 Dec 2022 00:08:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60887C433D2;
	Wed, 14 Dec 2022 00:08:50 +0000 (UTC)
Date: Tue, 13 Dec 2022 18:08:48 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: kishon@kernel.org, lorenzo.pieralisi@arm.com, kw@linux.com,
	jingoohan1@gmail.com, gustavo.pimentel@synopsys.com,
	lznuaa@gmail.com, hongxing.zhu@nxp.com, jdmason@kudzu.us,
	dave.jiang@intel.com, allenbh@gmail.com, linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 3/4] PCI: endpoint: Support NTB transfer between RC
 and EP
Message-ID: <20221214000848.GA221546@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220222162355.32369-4-Frank.Li@nxp.com>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UopKoRFg;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 145.40.68.75 as
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

On Tue, Feb 22, 2022 at 10:23:54AM -0600, Frank Li wrote:

> + * +--------------------------------------------------+ Base
> + * |                                                  |
> + * |                                                  |
> + * |                                                  |
> + * |          Common Control Register                 |
> + * |                                                  |
> + * |                                                  |
> + * |                                                  |
> + * +-----------------------+--------------------------+ Base+span_offset
> + * |                       |                          |
> + * |    Peer Span Space    |    Span Space            |
> + * |                       |                          |
> + * |                       |                          |
> + * +-----------------------+--------------------------+ Base+span_offset
> + * |                       |                          |     +span_count * 4
> + * |                       |                          |
> + * |     Span Space        |   Peer Span Space        |
> + * |                       |                          |
> + * +-----------------------+--------------------------+

Are these comments supposed to say *spad*, i.e., scratchpad space,
instead of "span", to correspond with spad_offset and spad_count
below?

> +struct epf_ntb_ctrl {
> +	u32     command;
> +	u32     argument;
> +	u16     command_status;
> +	u16     link_status;
> +	u32     topology;
> +	u64     addr;
> +	u64     size;
> +	u32     num_mws;
> +	u32	reserved;
> +	u32     spad_offset;
> +	u32     spad_count;
> +	u32	db_entry_size;
> +	u32     db_data[MAX_DB_COUNT];
> +	u32     db_offset[MAX_DB_COUNT];
> +} __packed;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20221214000848.GA221546%40bhelgaas.
