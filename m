Return-Path: <linux-ntb+bncBCS4BDN7YUCRBVMX2D3AKGQEQ3MLMZY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0651E9A48
	for <lists+linux-ntb@lfdr.de>; Sun, 31 May 2020 21:56:06 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id v87sf7147653ill.23
        for <lists+linux-ntb@lfdr.de>; Sun, 31 May 2020 12:56:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590954965; cv=pass;
        d=google.com; s=arc-20160816;
        b=S7iY5HaylCvRSzJkP3a5Bwq1szdj/V5OQgMkeFpLRyTFlUx6CthTGIZHB7p+kIMVZz
         veWH/fU2AAbFkJ0L5vzKEurlH2XuxvkcPVUiAWCz8E0/uCklpAlgzx/x1u8hcEXyB5Sl
         /TDCaeX7SXPOgze4O21y6SIQB5ghsVFcILJaQdbbTt1KudJj3F9j0EUT0uuoIkWjGrW3
         IXQJX4ZSqs8n0LgbA5JKziLx69TPfC6IjVkYndSN8O45t6qEoUuINsXNWBn/TV7Pwf7V
         U7kDLMeFVsSTXsNUz0+1ijksjN6APJzxDpPT8kPXb+b428272XE/KKxsYHPKT0JeLZ3W
         6DpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yhDFNZBJ2uN37ef/klNFnTRAMsGTdPZWh22SJNYCNaI=;
        b=c2AqOAD2xgxgwVqvG8pB4Q+MpLJ071blcPhk/+L3BZ75l9VRSeNsQ70/aSgEzrnZCb
         +MytnBGmoD2DOF+nsDJ4wnFYEdjbH5dN/r8H2/vFButIb8xYMq9aHal67cXS+aC9L9W3
         rg9wBBi9nppLVHmu7nw8ZkWzqVqOde4SdL64fmnQyD22S8eIDYYo984OBwi1XN22LFep
         opONQ5M46VSwm7o9jwhz0sp8ppxw8Gf1IxkfPjkTbiveGhP1z+XYen/tw6iYc980Z5Tt
         bOJPQgLNj3/Z4OaI2TbrnFkPK7YLFes00hdAOScBTYBtcx/DzzJxhlcjG3dF+cQ5tw2e
         fVNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=y2qvuZq7;
       spf=neutral (google.com: 2607:f8b0:4864:20::f43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yhDFNZBJ2uN37ef/klNFnTRAMsGTdPZWh22SJNYCNaI=;
        b=XywsseCxQmjrLFRJi9bwz834Lyo51fX/nXwJGvhADwq9TZyEQqcqYe6BzygEEpggDi
         czvglbmT2orR7UP045HU2gLhLykIqJ0UwXcYQlDG/8/QcQHFNVrYN3/u3YszU6S7plTf
         YnUyULZRPu+x5Db5grD4SiMaVOf9jXWCcdB3AGca8RHnxbVc1EjJs8CvyVgSmfMZTcRh
         3ECv1KXwkeONXeSZUEk6lqqJffpXKZkOwTZUZNOH+WvLDuer0fHmmE6nS8y0mwNakPXA
         QrlK7zjthuchOVce8TRC9AW0vYnNhSC21hBqdEXL2rr5LvKlBPGHAmcatH/YuJ58oLQg
         YXaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yhDFNZBJ2uN37ef/klNFnTRAMsGTdPZWh22SJNYCNaI=;
        b=tvmHwSuDQ2fmxnIDOJM18BK0KRgnv1TrOMSHBmSFYUZcCAdpjvyeCoj/ylAHViVlpf
         azi1JsB32lBFIlegWSH3AhVAcbU7NFxgpO6jQsv4fC81b1CjElKnL8Aqw+xIK4KAqib0
         URdSplvazfxHzIYkIe1XnpT0kp4J/RinIePj1H5jEd4/Go57Lo32ys/QvgZrxrgF1ATP
         zkgOVHjg+Ju1L4mZCr+Wjy9iKBVFuOZungN3THLPy0NCAw3xb3B2maVyt/uSMW+waZgS
         G026t9glm/LTC/dFBuLUGQXAfLJRBk9LTCoqyIyPbPYtLKqPXyo3g8XgAhn25auEoiVm
         fz7g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531g/YAngAZXnG+xVTQWMUdM1Wk4ohClpjgt0Ix0KKwH2WakmGhG
	/cBqCORQgvDWxamLJPm4vXI=
X-Google-Smtp-Source: ABdhPJxPRw3yh9EpQOtaT+2tgpku0EilP072cwbYBjTfJ53Dtuja/V0Nd8lMc2OliC8o3gXTZXGx5A==
X-Received: by 2002:a02:298b:: with SMTP id p133mr17915384jap.73.1590954965364;
        Sun, 31 May 2020 12:56:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5e:9505:: with SMTP id r5ls1825402ioj.10.gmail; Sun, 31 May
 2020 12:56:05 -0700 (PDT)
X-Received: by 2002:a6b:e714:: with SMTP id b20mr16323713ioh.195.1590954964979;
        Sun, 31 May 2020 12:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590954964; cv=none;
        d=google.com; s=arc-20160816;
        b=wLYvF3bbO3JqVVXQA2wT4+NYZvMDUH8ZPpEg4uf07+E172ZdYL2zk3Mt+2YA9UkHBU
         W8wXL29z8SVklbrJwq9cr/wzpz07He3ECRpfDkK8k3oBXssCL73XmKeIH8Cfk5cHqGfQ
         Rd/9UFSqgSXyqU7fO9XahDS0avb7TTT1wWtPOMHpTu55UfqRal7CPoJXhnng0+ZNZEuj
         A605K7NDd8QsrMCBs9BLIoNornJ3PvuIYHMu6fhaxFPJS/grMIdd9PJ58Nnt8VJA6DSp
         lHmuNoaRQfglo1vQ5DbMkxlmmhyrUVZod0EHv8IDz5xdeotLsscNlE2nyhM2ninXfEEl
         8psA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2sKvBbtocD4jxoo4fEWfEjC9jEANf/IviCV6V3KP84Q=;
        b=rbHGSb88xBOPHUV28N/BrgrQCkg4uOCKOMuTZy4PLtGq6I/Ij6Ryv4R3FmaON7P/kC
         AaaFit3za4gEDELMcuuJM8UBbhdK56IkfrzWos+bTOHruMs6JP7JV1ZvSdRZaAtk15BW
         U8h1SBlbEbmp5VwxS8pPN/8ro/qZSWnRpLUAt7EyONV+OYb+qVAPPSk5IeMhTKbkfBC1
         gNUsYbYRKdNcxwRE9H7fJTxEzDhm4hdLCIAkMlrPab4sb9CGdFw45c7E/+rKnrwCtpNV
         LI6ohAnA4VaGztMXxVw5dI3fxekbhBp7Vln152hbBb97YbUIVL6oZ9vjqvwC2m1vyNM8
         vyDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=y2qvuZq7;
       spf=neutral (google.com: 2607:f8b0:4864:20::f43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id x10si245701ila.3.2020.05.31.12.56.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 May 2020 12:56:04 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::f43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id j7so3544098qvp.2
        for <linux-ntb@googlegroups.com>; Sun, 31 May 2020 12:56:04 -0700 (PDT)
X-Received: by 2002:a0c:9d4f:: with SMTP id n15mr17452625qvf.98.1590954964456;
        Sun, 31 May 2020 12:56:04 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a664:2e00:a5da:931a:7f23:1d4d])
        by smtp.gmail.com with ESMTPSA id y1sm14460605qta.82.2020.05.31.12.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 May 2020 12:56:04 -0700 (PDT)
Date: Sun, 31 May 2020 15:56:02 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Dave Jiang <dave.jiang@intel.com>
Cc: linux-ntb@googlegroups.com
Subject: Re: [PATCH] ntb: intel: fix static declaration
Message-ID: <20200531195602.GE4620@kudzu.us>
References: <159051413389.47606.2615869180413030098.stgit@djiang5-desk3.ch.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <159051413389.47606.2615869180413030098.stgit@djiang5-desk3.ch.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=y2qvuZq7;       spf=neutral (google.com: 2607:f8b0:4864:20::f43 is
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

On Tue, May 26, 2020 at 10:28:53AM -0700, Dave Jiang wrote:
> intel_ntb4_link_disable() missing static declaration.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Dave Jiang <dave.jiang@intel.com>

Pulled into the ntb branch.

Thanks,
Jon

> ---
>  drivers/ntb/hw/intel/ntb_hw_gen4.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.c b/drivers/ntb/hw/intel/ntb_hw_gen4.c
> index dcbd6d3cf7ae..af5c8feb2df8 100644
> --- a/drivers/ntb/hw/intel/ntb_hw_gen4.c
> +++ b/drivers/ntb/hw/intel/ntb_hw_gen4.c
> @@ -498,7 +498,7 @@ static int intel_ntb4_link_enable(struct ntb_dev *ntb,
>  	return 0;
>  }
>  
> -int intel_ntb4_link_disable(struct ntb_dev *ntb)
> +static int intel_ntb4_link_disable(struct ntb_dev *ntb)
>  {
>  	struct intel_ntb_dev *ndev;
>  	u32 ntb_cntl;
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200531195602.GE4620%40kudzu.us.
