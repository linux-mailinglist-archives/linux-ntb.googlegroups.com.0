Return-Path: <linux-ntb+bncBCS4BDN7YUCRBRU4RHUAKGQEFQ52TOQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 046D643666
	for <lists+linux-ntb@lfdr.de>; Thu, 13 Jun 2019 15:23:20 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id h12sf9222182otn.18
        for <lists+linux-ntb@lfdr.de>; Thu, 13 Jun 2019 06:23:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560432199; cv=pass;
        d=google.com; s=arc-20160816;
        b=pfygpExOjY7HVV9FdTj7r2lAOhBjr4+EA9aMcayvauylGKwbSwkXJB/+1X+ZH8kL0X
         j5plr/vFW/Nqq/Ixnsd97qYrNSdLygWxQPXSOg8srycpXoPmogJmW+9TCwY6Qa/ND9Ik
         gObCiz6WsNaI3AB+EaB0A6X+sgLy+EyJWA+1GBEX49SaTS1ctckCWijW+jtVOkNhoasu
         hzdq/EDhnZfVpoQBay8htf+TlREx+tKjdVqG/kVNu8pkDhuilUDIKdQcymCiBnAm8WwJ
         PqCAvtZCpvsumziodGU3WyQSBV1S1+n5h7c9AgzvDUXtS0JZUYWIQYGBrHnnvJSJpoNz
         XUqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yu5iovGJxXzuJ+GR4lo/4bBPdvWlF+Q9Qcldlv4wZbY=;
        b=cuVpGEM4n6Reh8QbQ4suTEw7jjDnVGlwnDIS4Bbb5buITN2HESdDVU8s/r9iYsLSC5
         7a3JZdrUWRe0HX2BUIKTIL3ghmNcuE2QlYWHVwRf8P7BQJvhoULQD9a3qkYrRMigySPl
         ArUBPXpQzobEmj8iLFLYYCqqHv2x+3DlyxNJipZh21RTVVX+cU3nOJZdpwCzFNyylhVI
         VFS52QEoUJmiRvNDljAdkpFLAKYqK4nzBoVq6wIxgAefCqrtkJ0X4AcatFILVB51Prm2
         dzhAi+Aef6fyxy82Jgevv9xdsrvTUokWmbrolK2Ylx5TSQccLY/3y8S2V6Kd8FPOM7ms
         8+kA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=kLaRA7AD;
       spf=neutral (google.com: 2607:f8b0:4864:20::b41 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yu5iovGJxXzuJ+GR4lo/4bBPdvWlF+Q9Qcldlv4wZbY=;
        b=WAyOA7b3yJSEg5CrCojDpmmmYOVqW5PG00mS5Ca9FLti6KeSdrPGBmnVyyZXot8av5
         PG4FpYVLInT1rPFK9TtM4gEi1ajlZIsvobJ4XsZGmT/oM3uEze6Knvr9+sT0y4Wyauom
         No1QBu2Dizg7rvYbWsEU8T/30QBeha4OzaJIA+LQOBdlSg2MJLNAAplAx1Z+WNhS3Y+1
         7VCcPyLZrxV95WVOgmZ1NOQ+uUztVwmsxh8M6OPV91Pgb8iRIEgZPqlBgk3TTLIGzqMm
         JJqmlHayEDvnqh7xodY+u9q6pxgcAmF05crOIdLFs6tyOJ6Gf2K09tSWSGjDyFFXb0Z6
         xAEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yu5iovGJxXzuJ+GR4lo/4bBPdvWlF+Q9Qcldlv4wZbY=;
        b=MYcKIUJOsYe1uttQSFeMxUZctYHRem9THU3DHIWj/0VR6AspqsYfWFjMFvcwtkF0zU
         4Lpm+OCNk+6zD4jlKy9LPYyEzAtNwfagG1oRtVFgyj56ab4MTMORu/AgRkNCXEd8xHAr
         KxCGSsB/pJHKljw/mcjutLROyoQypU0DYAfsGMPWTpcTqjO8Hsve1jqgtQ+bMeExjyEU
         GSZ47GqRgsRud03Uhfx4XvlzmIsSJQvAFs0DhiH+Y8aLeUxwdvbFQOVi9DxUm7R/AObG
         h6/q5z9D8hzos+6iJ6AJhG3Khf52VFl6FgV0liMujEi7P3ECoFmd6dZabpTrdZGwqhVN
         fMcA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWF28BEWxBdCT1/Otv1fvbhr8BjE+vRN1DTjiLeoukWdtKXtrNQ
	udWn1J+0SiOMoM2JtVblNiE=
X-Google-Smtp-Source: APXvYqxVVmomsJa9kc+WuVDRB6EZAHydImc0SJ3Qc3hSUihUhfCPiY5Xtz1uy0c8FcbQlu5XBVYeZA==
X-Received: by 2002:aca:490d:: with SMTP id w13mr2901962oia.8.1560432198835;
        Thu, 13 Jun 2019 06:23:18 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:ac86:: with SMTP id v128ls674087oie.10.gmail; Thu, 13
 Jun 2019 06:23:18 -0700 (PDT)
X-Received: by 2002:aca:2b13:: with SMTP id i19mr3010634oik.99.1560432198563;
        Thu, 13 Jun 2019 06:23:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560432198; cv=none;
        d=google.com; s=arc-20160816;
        b=NN6BawCpYY+TskJFXT4lvmI6ED/QPo5yiNdskNJW6eFOxOYvan8gSufQWZNnBhAr/b
         M29SCKQJvsDOh65TgO7QQmltAYVPFblxpWFh9nXyDkW4Ln+NGbOZtSe3/aLFXO0S7lg1
         nqa8+H2JNyyMpXPFX/ZuHCnMZzrItd+bkvly/1aQwj7FmmToMF94u6c9b40CCWCcnuFC
         tMIm1riFoM6yaGvE/mCo3vv+S4nBzxWkvyl8g7wgAGK/fSqOxfOQQn2fjOrVPcEx8aJ6
         b/PkbtMkzKhB3VTTjjrP+8/ARG/tQbsHi49fczrUvPLjEkB4DWyB32BCpmIfoxj/rDBB
         4i0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=V2bYrhwljlJiLsRXLwerBDD4QlmICRm9Vh/5gWlUBlk=;
        b=UGAKUtmOqfB4zdtAwHY1omuxuhCo8Z16WkLayd/G/T3bFtHthE9iMa+Dfxky8smYGr
         6QCAE7IiaYxP2TqbvSjy8q9XguT+Nxffaj2cbJTSCCYeRQDDw9O+KevT0/3B7lFnw1Pc
         R3owjiZrLoN0/VoDebltxnMewLpSgSpr/6ORZhXhV9yNXTOZ4md8WyUS56Q3SKeO37gn
         88MKMc1U1feamsW4hVdHqvtX6C7NRnjvIVcpdPNsMnclix6UEW35ak8Ojd9xib5dHNv6
         kZkR8kk2bFL6rUSOhVz4+MtQvRnuppeGxtlhidKHxNSmkJu2cqMHbm2QcOZAj4BszYhi
         oPcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=kLaRA7AD;
       spf=neutral (google.com: 2607:f8b0:4864:20::b41 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id v141si149391oif.2.2019.06.13.06.23.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 06:23:18 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::b41 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::b41;
Received: by mail-yb1-xb41.google.com with SMTP id c7so7807350ybs.9
        for <linux-ntb@googlegroups.com>; Thu, 13 Jun 2019 06:23:18 -0700 (PDT)
X-Received: by 2002:a25:94b:: with SMTP id u11mr44890805ybm.227.1560432197282;
        Thu, 13 Jun 2019 06:23:17 -0700 (PDT)
Received: from kudzu.us (76-230-155-4.lightspeed.rlghnc.sbcglobal.net. [76.230.155.4])
        by smtp.gmail.com with ESMTPSA id 193sm751896ywd.100.2019.06.13.06.23.16
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 06:23:16 -0700 (PDT)
Date: Thu, 13 Jun 2019 09:23:15 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Wesley Sheng <wesley.sheng@microchip.com>
Cc: dave.jiang@intel.com, allenbh@gmail.com, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org, wesleyshenggit@sina.com,
	logang@deltatee.com
Subject: Re: [PATCH] NTB: correct ntb_dev_ops and ntb_dev comment typos
Message-ID: <20190613132314.GB1572@kudzu.us>
References: <1556618669-2434-1-git-send-email-wesley.sheng@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1556618669-2434-1-git-send-email-wesley.sheng@microchip.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=kLaRA7AD;       spf=neutral (google.com: 2607:f8b0:4864:20::b41 is
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

On Tue, Apr 30, 2019 at 06:04:29PM +0800, Wesley Sheng wrote:
> The comment for ntb_dev_ops and ntb_dev incorrectly referred to
> ntb_ctx_ops and ntb_device.
> 
> Signed-off-by: Wesley Sheng <wesley.sheng@microchip.com>
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Sorry for the delay.  The series is now in the ntb branch.  We've
missed window for 5.2, but it will be in the 5.3 pull request.

Thanks,
Jon

> ---
>  include/linux/ntb.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/ntb.h b/include/linux/ntb.h
> index 56a92e3..604abc8 100644
> --- a/include/linux/ntb.h
> +++ b/include/linux/ntb.h
> @@ -205,7 +205,7 @@ static inline int ntb_ctx_ops_is_valid(const struct ntb_ctx_ops *ops)
>  }
>  
>  /**
> - * struct ntb_ctx_ops - ntb device operations
> + * struct ntb_dev_ops - ntb device operations
>   * @port_number:	See ntb_port_number().
>   * @peer_port_count:	See ntb_peer_port_count().
>   * @peer_port_number:	See ntb_peer_port_number().
> @@ -404,7 +404,7 @@ struct ntb_client {
>  #define drv_ntb_client(__drv) container_of((__drv), struct ntb_client, drv)
>  
>  /**
> - * struct ntb_device - ntb device
> + * struct ntb_dev - ntb device
>   * @dev:		Linux device object.
>   * @pdev:		PCI device entry of the ntb.
>   * @topo:		Detected topology of the ntb.
> -- 
> 2.7.4
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190613132314.GB1572%40kudzu.us.
For more options, visit https://groups.google.com/d/optout.
