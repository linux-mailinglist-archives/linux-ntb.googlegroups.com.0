Return-Path: <linux-ntb+bncBCXK7HEV3YBRBN75TKAQMGQE5IAX2CI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EFE31A3F2
	for <lists+linux-ntb@lfdr.de>; Fri, 12 Feb 2021 18:45:28 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id u9sf46oon.23
        for <lists+linux-ntb@lfdr.de>; Fri, 12 Feb 2021 09:45:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613151927; cv=pass;
        d=google.com; s=arc-20160816;
        b=AxLl0EZa8BYuTRS/ak5KTdevMq5cgGAnSR7J/VIiAy9HKVYqd2XXM6t2DnBVH2XQ0f
         z8xa9NJq/CriWeEHnahUcCdOnFxtrbrR8DPn/DBxZ+WxM/qZo2fYGsCZRsaAqp5s143U
         Q9xi96fjC/lIQ6BkbKm3uav5+yEvv4hygdmoLZ3Kg46p1BaKvzYxrONShAa2H27JU3yQ
         uOvc4P0V1PfbPlXOz/8Gmoeg3GAWEEJQNNys1jmdAtzLjAegUd5qGOxT+cN2pTKTh+Hl
         mbvZrrRqLF+ibiaElB+7mEXx7SCtdhznzAeZMa2utrP/Tz6NpjuMrjlQBVAX7LLDJvnE
         FvPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=7oGP0nMEcEQTpGJ1n0j3Rf4MAwF6CyzuYSR2KoJDahc=;
        b=i1g55XCtMJAVI0VtWp+L6sNIN1fB4AdqpHQazUeD64cKk44ZdGieFJNLiaHzE6Az35
         +iBLtIDcrMcm5AGO80IMMYwCsyrOunkOF932jdPX+to8Ayu0iaf2WUxTYjfPNm5Eo79o
         jjOYjx2FnvMoaYb2qrm8qwb/T2TC5LszqZGRyzGR529IBLduv7dstZckZtyyE3iQaMTy
         hJzoOcwVvlaYWfFQ/NY1cQJ+eC8YNbjavOvOy02NIBTfgmD7Zn55HMoXTG2e1SjnCDoW
         33CwO5w+k7WdU39lGEh7lhovsSOdXGj073VQmQGCer6VjBGviee/RWN6Qj2J97P/rbZk
         YJ2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7oGP0nMEcEQTpGJ1n0j3Rf4MAwF6CyzuYSR2KoJDahc=;
        b=YZ30CnapEHWC+zRIZcnY8bwHIQwriUAliNKbrQcyr9RqV8oeMwT+d2itIM4uQQ7Z4N
         nzbbLu/0TmHwSkYWBlsPo/W32GaV4QF8n+2eZkZGDbBixu8LNnFrGCjENtVPwAhONYmb
         GiJp7ysV6U+faAs/75WNcX7MoxRDNvsuLQSlbIPVVPXDHoOb5L0UTl/AK06ZolSgGIxz
         q/dRKi51WGf2gVcwiQq7vpNbxaXiBCWnZPuVBRogFCumZMr7DzbrZaTuDdcsRyh6460w
         8hnW6yfX6jgqBmTYcm9HXXeJ/gifWAqgLITXIgt3k7wJQ5CdI6byAXnmQD2eyF7ZxAuj
         kGsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7oGP0nMEcEQTpGJ1n0j3Rf4MAwF6CyzuYSR2KoJDahc=;
        b=GLL4Rjp96CwP5PbgNO8V3apeZvbi6hoFgi3Gergw+W8acw/fV43tew6mycg/M3Z65s
         ciTDP6WV6jAYsbLzzzTmizWazh09EioBpOyzRX/bFQmS+COEu/r4Yvk/2bE7MKF1IRWe
         Pmj7xkT7JoQW2lCXB02KO4m4jatmZHewWsBm0y0PIzuVZyuG0ZRsT0naSa83f4zFXszo
         PxA8YqjpvfTfCstCUlLwXznOz1J+DrBp4gaw6zMc2EVlmWG1/Sk1Ij5Ez5HAgohGGfC9
         b7Ig5094KMWX27hrld1wh8vEFL2Gi4lxMgKiof0AQiPLyuXiE5QW61YRW31r1WxVEPX7
         5dKw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM53241AWX69mECQJu/yQxh8wy62d3wGU/HsoGESDKzg3K/UnnLoN0
	wLHRX2GxBuFziPGGNUN7Sic=
X-Google-Smtp-Source: ABdhPJwUWxAWptCYh+Or5oejQ2ST9onsfLezHP46nEWVrVYSd53toH1DQ4PKyhbOyWYlaeXcEESE3w==
X-Received: by 2002:a9d:398a:: with SMTP id y10mr2790286otb.68.1613151927270;
        Fri, 12 Feb 2021 09:45:27 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:4d:: with SMTP id v13ls2379495oic.3.gmail; Fri, 12
 Feb 2021 09:45:27 -0800 (PST)
X-Received: by 2002:a05:6808:1287:: with SMTP id a7mr360605oiw.151.1613151926948;
        Fri, 12 Feb 2021 09:45:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613151926; cv=none;
        d=google.com; s=arc-20160816;
        b=DCpbpNXWOFwfyEabls42FAoMlAhO6DiyPMCV6gs91HB7hDPpw+kI+mBEpfvYbgB2CM
         4v4HHzW1rWSM+Povcr1qkftRC3YIpHXbU4fDP6S+fWovl532P6LsZUglkolhPm5hSUfx
         8Xmz7CSzw9OagHgD/2PqGH12HawECULFRAcrOg4k1tkCdd2okBHBXV7SVBfsT3ocnC0A
         GJHqXNImBsZd+MaOZgKhITe2SiZemaHxU1SGyrNL+Vxe462Pk5IrHNNMeZkaxGucbakJ
         VXOY4xjNqCFkw9V96pYC4cOOSdbT8IMI/aB9IxJGBXZLnVU906A3CD+PRetNPc6oXbq6
         qXyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=5wXI1Ve5bPWlyUnrxZSQI1V6pwtyYJ9ziIo0cjU+cbw=;
        b=P+B93ktdtBuh5JjycmYgwIXzniMmb3Mq63dTGS1USIRqe1STANdTtaHN/wwgBtXZle
         dmKjY6jE11np1UxYy8GbgBho+wVK1whLB6D2VFfUcW3ed/YVNzETfizP5/Fn4ZR9bnxw
         mugSg8/T00Xxg05zoj1BhoFjRPqMaQyp4k6h/8WW/gGyB9TbnJv/JWoeL0UoBOl1JZwE
         qypdkZz44qVE65T58y/VRUVF24MCBaCO0NuuZ7AgENpErkLgbIgExHliX9ekCpWoDNIG
         uUqpoRbbB044PS1KM9vF9K76xkt5T5GQAFjtN6KaAY5rZrfc93BW4U7pt1wYd87hVI5A
         eA2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y189si804211oia.4.2021.02.12.09.45.26
        for <linux-ntb@googlegroups.com>;
        Fri, 12 Feb 2021 09:45:26 -0800 (PST)
Received-SPF: pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A89F41063;
	Fri, 12 Feb 2021 09:45:26 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com [10.1.196.255])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C4233F73B;
	Fri, 12 Feb 2021 09:45:25 -0800 (PST)
Date: Fri, 12 Feb 2021 17:45:20 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Wei Yongjun <weiyongjun1@huawei.com>
Cc: Hulk Robot <hulkci@huawei.com>, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	Kishon Vijay Abraham I <kishon@ti.com>, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH -next] NTB: Drop kfree for memory allocated with
 devm_kzalloc
Message-ID: <20210212174520.GA22934@e121166-lin.cambridge.arm.com>
References: <20210210075345.1096001-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210210075345.1096001-1-weiyongjun1@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: lorenzo.pieralisi@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Wed, Feb 10, 2021 at 07:53:45AM +0000, Wei Yongjun wrote:
> It's not necessary to free memory allocated with devm_kzalloc
> and using kfree leads to a double free.
> 
> Fixes: 363baf7d6051 ("NTB: Add support for EPF PCI-Express Non-Transparent Bridge")

Squashed it in the commit it is fixing and repushed pci/ntb out.

Thanks,
Lorenzo

> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/ntb/hw/epf/ntb_hw_epf.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c b/drivers/ntb/hw/epf/ntb_hw_epf.c
> index 2cccb7dff5dd..b019755e4e21 100644
> --- a/drivers/ntb/hw/epf/ntb_hw_epf.c
> +++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
> @@ -723,7 +723,6 @@ static void ntb_epf_pci_remove(struct pci_dev *pdev)
>  	ntb_unregister_device(&ndev->ntb);
>  	ntb_epf_cleanup_isr(ndev);
>  	ntb_epf_deinit_pci(ndev);
> -	kfree(ndev);
>  }
>  
>  static const struct ntb_epf_data j721e_data = {
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210212174520.GA22934%40e121166-lin.cambridge.arm.com.
