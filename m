Return-Path: <linux-ntb+bncBCS4BDN7YUCRBHU4RHUAKGQEIULC5PY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F05243662
	for <lists+linux-ntb@lfdr.de>; Thu, 13 Jun 2019 15:22:40 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id j26sf13839800pgj.6
        for <lists+linux-ntb@lfdr.de>; Thu, 13 Jun 2019 06:22:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560432159; cv=pass;
        d=google.com; s=arc-20160816;
        b=TNIz+FyS0ea84dJ02GCp+jxAlo2oJK02DmUBqed+rFjinXVEd/u2DVdeLG2SWJKiAj
         em41pdZMpX9VONaVeyEkMf7bdQx6V3y3rTf97zOEgLQnSJR/Jd59GdlKJokGWFXd2UjE
         qrZIDoT2Vs6hOepDd9KpxPJPoVvFdmajypwjs9KhO70FoHMjgj8qTa0nc0AlP+USfpb8
         bUz8OOd5bLrI8zsOmfPRyzNz8Yld/XigVVtBHC4KCrCNzk8C2+7+KIBWCZ7ucphf6sXC
         HIpBYOLarLBvcVHEWUAlUwYMWPfdL5tHNvWFVs5MpzJRRZYwvLaTkBUVZA1jgjHuti1N
         dzcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=QmrJ+2UPOkxfpsSNjNMp9vUcPOYW+jyWCOv2+n6xILU=;
        b=doS9dgchlU7na9CcYpo5TBEVPJVlgqj1PvMXO2d+PnoBqIW/q+fGuXeUSvz34kT7CU
         yF5SA2fORRPpiWcuvW51dycu5WyeodxOI8rRw35JeWL19YHZvZhIDFSCxmvU/Knh47I1
         2H+Ei58sMJ9LRyVZpq6XiRL2lZPC7BvrXEHEemoes07BswZmQmJIE165Q3HMvBJtC4Vt
         i7bcL4OSn2yJ+VQJkQjgAO4FHbW2PAXJMslXpmUguqQ/Yzben/daMWHZMWG7+/QFvPXf
         Dj9HoyVmshEAIRvF7o3BHTl+w0iW3B0UroZMpxBtqVQa4bOvsvImeQXAknsG//qH/f4b
         fMHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=TFX6C5Y4;
       spf=neutral (google.com: 2607:f8b0:4864:20::b41 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QmrJ+2UPOkxfpsSNjNMp9vUcPOYW+jyWCOv2+n6xILU=;
        b=OWImnqdk87PIxaY9b+/TCpF9FHge5iAh6OdZDAs3k7fSgzLCMd1A8uvMX9i4pDmlTK
         0gKjsv+ndZ5r/pJdoRYAUUkor7UAviXjUhWpLmyukLZ1WtlPcY0/q5Nsp4uIJzYgmtqA
         wmk9ohMN69v+dlUvdR6n+ipLl4XTSMSaKUm9SHl2w7VHjL9GzX0pWZZUGGm+v/7Be9E1
         m1/KAY/APo00tC6TE9+mQnMWOQNmz/AXYr8ursjdfr4MnJaD6MaIsNXxk9QHMjFyvj/3
         k8gKYDdvqFAkZ4e/qF00XBvpFHvhmzmgXdZsZxdFbRVBgamiopnVbnx4DSfPOHORdvHJ
         amUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QmrJ+2UPOkxfpsSNjNMp9vUcPOYW+jyWCOv2+n6xILU=;
        b=nYoep5nIonM+mfQsjAPHQKeG/6EKOgbw0RZSQLSA9QCDaWcF4LnZe8qbKckq793vdK
         +D12dfYjRaomukJr72j/EUTGDHX7wb9sUh3UingHBq2I7Mlq9X7J1JJymFw01EHXzi6Y
         JD0w0cW/xAcdfwcno0t+DvBj45D15hB0uSuTWcmNU2KtpOkACzJB7S453OylEoP3FSFV
         bkqwTf37caBotJs5TU+5zeDVUz4gdIt8laOt0bmCRXAElE0CohpPPCLlDWmuO+n8OtxX
         FOcGBKQ1+6KG3JUFTugVXvbDnxh7gEWxNDZMbDmeSUs2Pg0ovkIa5zOUYObWs7/hy3qI
         42dg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUWJ0UZNJDFwnz45FKAWtIc4sL/u2oIbvmRsOpisNK5WblQnKaZ
	esvowga/NpSvY/sVHHrSNBU=
X-Google-Smtp-Source: APXvYqxN26eB+mHGFWCiLCV6WHPiAxv02gtLCdaln7M99FBUnK1a4ayrUNPdJn0VvZXBdiaD38niMw==
X-Received: by 2002:a17:902:2983:: with SMTP id h3mr44202575plb.45.1560432159196;
        Thu, 13 Jun 2019 06:22:39 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:8593:: with SMTP id m19ls1446301pjn.2.canary-gmail;
 Thu, 13 Jun 2019 06:22:38 -0700 (PDT)
X-Received: by 2002:a17:90a:aa0a:: with SMTP id k10mr5746731pjq.43.1560432158707;
        Thu, 13 Jun 2019 06:22:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560432158; cv=none;
        d=google.com; s=arc-20160816;
        b=DEUwtq44NvPYYh9DSqDMvl//fV+P/htelXHNpaY3V93cpl/B0uNCRbTD5klmWF1o/a
         HubETOLy9H5amLo5/4knxIf0wmwN4zkzMFtnqmNtg1NdNnOH0ah0S2F1Gyej3gr9S8/M
         Bh0lH/LG6+/17pdw8Sr/bn3fiY/dl/yQfKuAGC7FQCQuch0zECslTBEuJ/A9a4ljPxnN
         wJyAad8QD2/QCoSeAKA0euogD858g7aOZ735+XcaLYh82IVe50cciqCFohY2Prt1wPb7
         aXeo3FV2vv7nGIx3jkClWjsXOmC26Kfehuv7L38QrkPPzD1O49M98h6gb9PI6SjJrFrl
         rM9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=heTVmTA1VC7+Lv8ssRiXzCfaW/u+s8AFPCxrnLoG20c=;
        b=m3BDnGYbFNacWDFGVOjeTw6Axt7cuye3FqhTJXU6JqP2brlEsqlz3Y1I5DgPaifD0K
         xMtBrq291OCMhM/2I1Ax0IVCkQZhtsBEgSBi7zpPuWD5f/j19gPQz2sJcBdwqK5azvJM
         dx/DJXbDX98yISmg/Pt/1P2Zb4dE1mZSbLUWoikRwHketJ16JTpEgppOoxCUuUZedKqz
         mTeRWF+eA3s/tZfIwKrlC2tgVpqImA0xIaGKz9Mn7DPRGlWikag5BgkDrKBliGo5e9J0
         /FxiFdGsbNHjb4Or0hpwIHy7gmUWeXwy/g67YWJgL+RoFb2Z/HAPJVuJ6MVt1BT44DiZ
         NuOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=TFX6C5Y4;
       spf=neutral (google.com: 2607:f8b0:4864:20::b41 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id g2si101744pjp.2.2019.06.13.06.22.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 06:22:38 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::b41 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::b41;
Received: by mail-yb1-xb41.google.com with SMTP id d2so7813639ybh.8
        for <linux-ntb@googlegroups.com>; Thu, 13 Jun 2019 06:22:38 -0700 (PDT)
X-Received: by 2002:a25:6089:: with SMTP id u131mr12942461ybb.14.1560432157816;
        Thu, 13 Jun 2019 06:22:37 -0700 (PDT)
Received: from kudzu.us (76-230-155-4.lightspeed.rlghnc.sbcglobal.net. [76.230.155.4])
        by smtp.gmail.com with ESMTPSA id f206sm759183ywf.77.2019.06.13.06.22.36
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 06:22:37 -0700 (PDT)
Date: Thu, 13 Jun 2019 09:22:35 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Kelvin Cao <kelvin.cao@microchip.com>
Cc: kurt.schwemmer@microsemi.com, logang@deltatee.com, dave.jiang@intel.com,
	allenbh@gmail.com, linux-pci@vger.kernel.org,
	linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org,
	kelvincao@outlook.com
Subject: Re: [PATCH 0/3] Redundant steps removal and bug fix of
 ntb_hw_switchtec
Message-ID: <20190613132234.GA1572@kudzu.us>
References: <1559804984-24698-1-git-send-email-kelvin.cao@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1559804984-24698-1-git-send-email-kelvin.cao@microchip.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=TFX6C5Y4;       spf=neutral (google.com: 2607:f8b0:4864:20::b41 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

On Thu, Jun 06, 2019 at 03:09:41PM +0800, Kelvin Cao wrote:
> Hi, Everyone,
> 
> This patch series remove redundant steps and fix one bug of the 
> ntb_hw_switchtec module.
> 
> When a re-initialization is caused by a link event, the driver will
> re-setup the shared memory windows. But at that time, the shared memory
> is still valid, and it's unnecessary to free, reallocate and then
> initialize it again. Remove these redundant steps.
> 
> In case of NTB crosslink topology, the setting of shared memory window
> in the virtual partition doesn't reset on peer's reboot. So skip the
> re-setup of shared memory window for that case.
> 
> Switchtec does not support setting multiple MWs simultaneously. However,
> there's a race condition when a re-initialization is caused by a link 
> event, the driver will re-setup the shared memory window asynchronously
> and this races with the client setting up its memory windows on the 
> link up event. Fix this by ensure do the entire initialization in a work
> queue and signal the client once it's done. 
> 
> Regard,
> Kelvin
> 
> --
> 
> Changed since v1:
>   - It's a second resend of v1

Sorry for the delay.  The series is now in the ntb branch.  We've
missed window for 5.2, but it will be in the 5.3 pull request.

Thanks,
Jon

> --
> 
> Joey Zhang (2):
>   ntb_hw_switchtec: Remove redundant steps of
>     switchtec_ntb_reinit_peer() function
>   ntb_hw_switchtec: Fix setup MW with failure bug
> 
> Wesley Sheng (1):
>   ntb_hw_switchtec: Skip unnecessary re-setup of shared memory window
>     for crosslink case
> 
>  drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 80 +++++++++++++++++++++-------------
>  1 file changed, 49 insertions(+), 31 deletions(-)
> 
> -- 
> 2.7.4
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190613132234.GA1572%40kudzu.us.
For more options, visit https://groups.google.com/d/optout.
