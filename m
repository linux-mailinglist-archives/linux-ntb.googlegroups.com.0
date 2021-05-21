Return-Path: <linux-ntb+bncBDXYVT6AR4MRBKNAT6CQMGQE6SSNJPI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D39F438C9FF
	for <lists+linux-ntb@lfdr.de>; Fri, 21 May 2021 17:22:21 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id a24-20020a5d95580000b029044cbcdddd23sf11028249ios.13
        for <lists+linux-ntb@lfdr.de>; Fri, 21 May 2021 08:22:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621610538; cv=pass;
        d=google.com; s=arc-20160816;
        b=qCqXVuQSOzqgiib88togaoja08wxeivkz67PBJTCMbE60RZPww27ZhCd+ufc6oUBJI
         js6J5R9mksA8xlSl4cj7RlYccSP1ohoGGPT8kBvqTVNmDFkxXJU/VXVd73wmLQvQRSGM
         LXFctl3J4T4uXQERzuvI4DJ0drubTLq0ZuBf5TlodTiHf42Sk1FQ0pjHunG3/aXsBxvo
         eq1uLipJJ/X2BksJrKsHXl/ghZJTw2yAI4sr4E0bjV598pnCqacqa+CO6xDNCrJY7FcC
         tbBYak2lHUoBs5SDvqZk+6F18qy2hpV8fJqPl8kez6iemALZ0EIQCrTTer2U1/4426fa
         KddA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=7cJ/Pv/92m5hIk8YdNLPAsE4fd6TFhtGyctfDvVqQ+o=;
        b=bnZ7+ip4GB/fobGQd0i7+AKQDMtPfw5avfH4GnvmLQl3X9p6lRsDjeD3S7gLmJ+bLT
         hOf+RCN6l9t7Uut9S7HksvUnxkeW9c2wWkOKpDoalg5UCztraqeqQstF+f1KkkMPeGio
         AywHQPNVcPpv+B/tBMJ6cQXeADsmwYfqPFxjwNblJbwKH9TUat+NLF87mJUjWSVQOzSg
         y3Ims1KHhHIH8X+rhvd4/6v4YTkv2OrU6kPOk2AlbNzd3PjtfI5oE3GJN4BlVTuViP0t
         hk5ElkV26UfuSEVl9XgQsFgMvmHdXIdNqzuFGU545gqhZNXCXFX7NVgMsdLeHczLHgy/
         hntg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7cJ/Pv/92m5hIk8YdNLPAsE4fd6TFhtGyctfDvVqQ+o=;
        b=cI4lCTie4Z7z0VsNmixZXBf2vm54S5tJoG9+DyZW7fuOwYx3GHV/yJenQbcuMqgiYE
         FXTbciKa9KLM6w41OuTRLixW0azqB5VtNqAKj0rPP+XcmAj/Txx4HRjtq/E79RR9jSOG
         v8JBANzKu3Lb3D2dMtyST8RkXPw6stpfAw/Zw4XXL2UgRgPS8wCDrvPVve4v3Bd3QXc/
         I02n+2mbO6Ixrnt4TB6SanhyKTI0FSnRtHDsHb8kHJCOEm3jiOjlNT9ghFUTJSU+toAF
         CPs/dUYe9Yi/rnfeX8aLlz22t3qT16/blv5iZFlNsGfY23faCm3Ks54ZRghlFt9VUgzI
         G32A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:to:cc
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7cJ/Pv/92m5hIk8YdNLPAsE4fd6TFhtGyctfDvVqQ+o=;
        b=WXhoGuUV63SNv0/oQDPHaZUC4IGislwXb2DSV9dk9AyWXd/WWYAa2+S3lrKLVp+FKf
         a/Sx3KCaZ/HCUX1ZLMX8eCHhtVmGiX6ojWzaEh9D0aOqenkeLSzS/kACoUjRmHOp2lID
         mKYCyhCg0EWQaK8odj9Cnb3fZ4G2zUQ0D5dE2wE9G34TAVMB1ntsY2TSfJsytvO5usKP
         IOHoc8W0KzqA7BqcEO/vQSZxyhkjIdBq069DYLyRyo/wPZimHni3Eh/eZwoabjmWEd5+
         Flnnm1nbBZfjtqSK8NngPGxyghdvy+lWcsh70ENUDIkKiZJJC02DBBaEmlxB442dSq3V
         J1gw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532Ch4qeCNm/ITMux4WdX9gtFCACobpWTNto351Ml3Cwqp7IGsZw
	FIOFP7dyc6qY7FucbT4lruU=
X-Google-Smtp-Source: ABdhPJzk8x7tMccx+EUJme36tYoevtIQqd16bjRPZHsPQnLwRdxplPMzzwr33x582kfIhlWVuptaMw==
X-Received: by 2002:a92:50c:: with SMTP id q12mr11880633ile.166.1621610537588;
        Fri, 21 May 2021 08:22:17 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:1888:: with SMTP id o8ls1606783ilu.4.gmail; Fri, 21
 May 2021 08:22:17 -0700 (PDT)
X-Received: by 2002:a92:cdac:: with SMTP id g12mr12064434ild.72.1621610537204;
        Fri, 21 May 2021 08:22:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621610537; cv=none;
        d=google.com; s=arc-20160816;
        b=OxEJm5ClSEKUN5+XRp+Oi8vVVTULEyf6mqa7CNMd9Uopuo8DDT5gUkglcKW41Cxn2P
         38yi/QhF1UIDG/7fVk+qxMdg0lRVvMDTxzw9uN3n3Jfrbe22pryn/dCyndotRfMSNeyP
         MxIYNlRiWjcJGYcPt0H0tIevv+FgpIfDMl2YN7n20sfeXTcY9a3kwzuUb1lOe8nc9xWj
         mF1bPA0rxiHLFtKxUj5u2QCWg8b6nL3LhhUByevPkb+mXU0eaVu6FCw8rduUCU4KbS6s
         COPDfC3ZAOhK+KLUQ+k+j79370Vmhy9Ktx8r42qfIjmw8QEwjADFLV1jraKFlbP1464O
         jXrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=FCZfLtstQcntLfYcMYNos3OfYCdFuSMkYbj5NEQi9Xs=;
        b=e263saBiM12iHrRXxZnnUZIDZOAJVPM34oPOFCsWnrg4BfhMkyyHzrm5E2qnEBt2vK
         s9S1+H7XylEog7qomC0a6MwfVuez3HCVUskmjARrTmSW+8M2IGmHEqJEtXuSmBafOdOR
         Gqk/Gxta5lTeTwYWtV5+TFIhqIQfbNAMV8Y7JSygROSmntKtrI7EszafsREokdkJWbDB
         lCyyF/dkhYHXJFkd4WQkRrQgTDKSf1mfPFZLe2oFeoNzQB3QIInCp5iG9tq3yXrByNKA
         w1aWUwasWM1h7OV/1XoDDomaBxxJ7IHMsOLjW1uVUgXY9PCi4vW5H4q8SoEASyAuTZcc
         0aqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id f13si733257iog.3.2021.05.21.08.22.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 May 2021 08:22:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: ecyiLWps+6AFJuOhA/Q5GoMBDQpoZ6DcPb8YSfZ4019DIArI55yW0bDR4FOwqkOsUvVt9NJy7K
 wYHDKu2CYz8g==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="201543427"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="scan'208";a="201543427"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 May 2021 08:22:16 -0700
IronPort-SDR: c3hietgEofDPDt7Hqz3M8FouHZR8UGp6jrwKnyh/8/EjVqThnAQUwP0IsJzG6lZ3KRCgm4O1Qu
 G6J7HJ2VAfRA==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="scan'208";a="412638006"
Received: from djiang5-mobl1.amr.corp.intel.com (HELO [10.209.137.211]) ([10.209.137.211])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 May 2021 08:22:15 -0700
Subject: Re: [RFC] ntb/plx: Add support for PLX hardware
To: Logan Gunthorpe <logang@deltatee.com>,
 Jeff Kirsher <jkirsher@ixsystems.com>, jdmason@kudzu.us, allenbh@gmail.com
Cc: linux-ntb@googlegroups.com, Alexander Motin <mav@ixsystems.com>
References: <20210520222323.104901-1-jkirsher@ixsystems.com>
 <ebfdfe78-67f2-2096-5e89-bd1b65fa819c@deltatee.com>
 <feeea59f0612d257591cd14953d31c5f1482c012.camel@ixsystems.com>
 <533937f2-7d41-7bfc-9323-e67c8d4878c9@deltatee.com>
From: Dave Jiang <dave.jiang@intel.com>
Message-ID: <2275dc4e-fea1-dafd-c256-0f6f32f9e3fc@intel.com>
Date: Fri, 21 May 2021 08:22:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <533937f2-7d41-7bfc-9323-e67c8d4878c9@deltatee.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 134.134.136.24 as
 permitted sender) smtp.mailfrom=dave.jiang@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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


On 5/20/2021 6:13 PM, Logan Gunthorpe wrote:
>
>
> On 2021-05-20 6:17 p.m., Jeff Kirsher wrote:
>> Is this something new that all NTB drivers are expected to adopt?  Just
>> asking because I used the Intel and AMD drivers as examples and they
>> are still using pci_iomap(), etc...
> I can't speak to expectations, I'm not the gatekeeper, only a previewer
> passing by.
>
> I believe they are newer than the AMD and Intel drivers and there are
> new ones added here and there. I think generally, kernel wide, they're a
> better choice. You'll find your code will be a lot cleaner, smaller and
> easier to understand if you adopt them.

The Intel driver is pre devm allocators. Maybe one of these days when I 
have time I'll clean that up and covert it. But I agree with Logan that 
things will be cleaner and smaller with devm_ calls.


> Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/2275dc4e-fea1-dafd-c256-0f6f32f9e3fc%40intel.com.
