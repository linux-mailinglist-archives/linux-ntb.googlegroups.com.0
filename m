Return-Path: <linux-ntb+bncBDE55XUH3UHRBWM47HZAKGQETTA4HXI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D60C1775EB
	for <lists+linux-ntb@lfdr.de>; Tue,  3 Mar 2020 13:32:26 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id v30sf1072572lfq.0
        for <lists+linux-ntb@lfdr.de>; Tue, 03 Mar 2020 04:32:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583238745; cv=pass;
        d=google.com; s=arc-20160816;
        b=yx7TJZ7Dofls7ZzaYUfClt7ms6UhggQyviM+0M2qMtgAoufb73elzO20oJF+0WyyT+
         POiCFeUYnNWu/pUPHVVnbAjUlk41edDNcVKyVIEa1N9/fFAhU7N7kUYfCsOgJmeXdcqh
         MDXp27PEq4cwJ9hcxOodByJyOTQMNRlreoADYgi1EjZMf4xzabAulYHmT9kNF1Opr5p3
         d1QuJFxbkXUzYn+be275BrryPnRneNbcuE4aZQBqqXVHjWu+UMTsych4tbY2OKy9QRsI
         B3PK2ys+5XhYlk3SdAWqghEAs+4uDwInBvbW6P5k7aXX2KMpJO2fh5xfEYQhanLAKfpj
         OLtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=NQmShGDpRSTUW8YdrigaE0tCLQgxrCJb2vjC2yFaQ5k=;
        b=AypyPdWvnx4d3oyERMfap027CAl0+YLz0PrZkzEDAW3zzHJ/R3HBM1VlZYVm+63gem
         +C6M8rz+1EIUQ4dRXpnU5ngcEqBCuwHPsYdaW1PGClzTbuzLJvleWVD8xKTKbVMv4d6U
         MrIxbg31/853qpRdOdzhDUSGAC8yBmdrk8KvS8ps4Ej2bWHK+Gwk57D7OhUNBS2Jc6Zi
         hvZHQH2SfVJ35/wphPez2rtWJjVHlRU/9oAOdZJfXkzxe95OCfNxg3FWTOiLOWDoOB8n
         F6baE+8BwDk9nvB0EsS4PPBznlFw+Dbop2R5EPNFvH1FNfyQiOugeSSLPolvF3Ke9Nyj
         m2uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NOmn4fZ6;
       spf=pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NQmShGDpRSTUW8YdrigaE0tCLQgxrCJb2vjC2yFaQ5k=;
        b=WyO2L8KcyWytH0d/Q9lOP5lapw6wU0LUzM3z8WGy+Q261BXYNSFPD39jYCLhYIG8w5
         Jr1QgSzn40XGDd/Mz/J1N2lq3pB8Pkm2ZmBfx2gI6Toy7VcET7oR4AMuk0Adnp2iHtep
         FuIg239Lj5tk9yYkSVu8Er6I+hAhXZoOYn0PWjW+tr7D2Sf7nzhBmOepppUoDDwXdj6/
         bue+lfWbwmTtBY/Tb2cAZAGozJBWBeh4mbUShqB/IbC24ENoIhrnswOEt9TDVIXKC3+v
         SJHWLO6raMiccSXep+AGIPM+S1Rd4PFliaCn+NSMlLdMuD6NYXeu0o0g4/fdb0dfTOtg
         oXMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NQmShGDpRSTUW8YdrigaE0tCLQgxrCJb2vjC2yFaQ5k=;
        b=DGj1nbmjHgC4guw+yc2oijOgbrW2GJokbpJy0veAcGiwrNySqqWMgHtM5MVj2kXWh2
         9A924zlklQOf1PoztCgWnfgiieiQ01fy+GX5xRj4ljYXZB5K8N0Gpx9qad5lpOrAJ92v
         F8q57wDscwLDDDlBhUlz59U9RZI9JjqMGAeov39mPrAD1i+i8LG8u+Vk5Y+MwtEgO3cI
         ufK/PGs3P89eLvndrpxPmWP96HrvMKr1QfEp+EFJBPI4D3Pu8xisbuF2iy9QrOzI/kuu
         xFxJ4McDlR4vBvhZKolMYn8Jh1pOA7t6Qws6sezb9CxEng0TyXJe7FVJGUzxmb06jqnz
         1f9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NQmShGDpRSTUW8YdrigaE0tCLQgxrCJb2vjC2yFaQ5k=;
        b=unOhiaNhY2Um0AWPEnpbxO0cKde04J5c9TFhRo1fBhw0Pfv9BEhGVIQZAqu655R5jy
         RowH4v+3u8C9JNni6OeiN/YVKKRDkKHyhCpMyn011xC2fbp1xBDJttG8hBk7/kVTOn9B
         zgaZRHKZssSGUw18ZcqS7R8vCeaWcvjW57tHlJQnCGK2bbEBcM82bmUEjZ/F2zcghaZ4
         584SFlJmGdIAVhUz099shx9gxXK1Y+MDnOt1S7TbxVQ+IMEZ8DqacJ/fpIL1BOYxCy2U
         TOPYo2DiXIL5dyM2ZtCTBF03G3OENmdS8JUsQl+nOoNtKR/5dJ8vM9tx05pBZzagacXK
         yHow==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ08ol0635VeAYeYLuSmLRJHm3aIMCbWV9dKnQwym8ivf4WbycYz
	36Q725yJRXrpAoSIOSlBaLo=
X-Google-Smtp-Source: ADFU+vuroqRlOiwvP8P6CE2Sk1vKpRSD7krlg3Wpqo903aN/Y+tS16JJYWwlILfEBZRrUT7jfOEWVw==
X-Received: by 2002:a2e:b0c9:: with SMTP id g9mr2392098ljl.134.1583238745725;
        Tue, 03 Mar 2020 04:32:25 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:5c47:: with SMTP id s7ls424177lfp.1.gmail; Tue, 03 Mar
 2020 04:32:25 -0800 (PST)
X-Received: by 2002:a19:750c:: with SMTP id y12mr2621897lfe.109.1583238744994;
        Tue, 03 Mar 2020 04:32:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583238744; cv=none;
        d=google.com; s=arc-20160816;
        b=u8EQR5cOqXDsJoiG1glgCL0Yxoa8GZhagw0u2Ss8cmgx+FdNcpGO1YSRox5MyOSHcL
         52IpBtOnrSxrhZVzXSr1q+wgTiBtVaaOPvp7wEfzX6gf8GgVlwerLwwsBTFK5PlXa+4Y
         5fTWNL9SmtyJCBjoWS40WwHZyXPREJEMHOh9MC60LiRh7bpHUeWqEs6TnjhU+DrtFOww
         rFzSUitMJ43fO+W4+OeqGjYvm8VQyIyDvl7L1efHwqjruqrAQsHOEJgDoMifb7tEoLY/
         5HRf8xJcrXIM3PsGco+P0sVs19Vwyxdg3R7b08c/ib2S9DsxgTE1fZRvQ9071wdueEQ7
         blWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=09C3nnwIuE/Iv16DhL+XJHp/9c9nE6JdQTn3LQR/p8s=;
        b=PbAjVPhnjdVDDZ9TlyNMUhd96yM/PMjVIFBMwSQeL2AzgMhZRjT/wutmn5BQnacUz4
         wWomR6tDtVBB1OPQFIXurpnCdKrlqrTLKNffk3sJITnIeGqkVb1yPNBNqCVqHjDwTjLv
         YcqZhYn4s54CAFbJduNgCMkCBnftPH3iNIv3G/yZQEQ8IZufedpR46DktX+dnU5wKzZT
         xtLAlSkPrHRFFE8VIurQSDA84Oa9XknE804vzhTESVDWICH20jDJipnrj8a8WopKqwoB
         VJEZab/L1Lq3mL26tnlix8CmL/bYb4GwHp7dNbZNcl79YPM9zlwQJp0lbgK7AdyVhQhp
         kfAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NOmn4fZ6;
       spf=pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id e4si715205ljn.2.2020.03.03.04.32.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2020 04:32:24 -0800 (PST)
Received-SPF: pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id x7so3348613ljc.1
        for <linux-ntb@googlegroups.com>; Tue, 03 Mar 2020 04:32:24 -0800 (PST)
X-Received: by 2002:a2e:8754:: with SMTP id q20mr2274725ljj.258.1583238744478;
        Tue, 03 Mar 2020 04:32:24 -0800 (PST)
Received: from localhost ([89.207.88.249])
        by smtp.gmail.com with ESMTPSA id 67sm8759384ljj.31.2020.03.03.04.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2020 04:32:23 -0800 (PST)
Date: Tue, 3 Mar 2020 15:32:23 +0300
From: Alexander Fomichev <fomichev.ru@gmail.com>
To: linux-ntb@googlegroups.com, linux-pci@vger.kernel.org
Cc: linux@yadro.com, Logan Gunthorpe <logang@deltatee.com>,
	Kurt Schwemmer <kurt.schwemmer@microsemi.com>,
	Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
	Dave Jiang <dave.jiang@intel.com>
Subject: Re: [PATCH RESEND] ntb_hw_switchtec: Fix ntb_mw_clear_trans
 returning error if size == 0
Message-ID: <20200303123223.i3fvwfmbhklfq2l5@yadro.com>
References: <20190710084427.7iqrhapxa7jo5v6y@yadro.com>
 <20200122131510.d5ckfj22idh56ef5@yadro.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200122131510.d5ckfj22idh56ef5@yadro.com>
X-Original-Sender: fomichev.ru@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NOmn4fZ6;       spf=pass
 (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::241
 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Ping?

CC: Jon Mason <jdmason@kudzu.us>
CC: Dave Jiang <dave.jiang@intel.com>
CC: Allen Hubbe <allenbh@gmail.com>
CC: Kurt Schwemmer <kurt.schwemmer@microsemi.com>
CC: Logan Gunthorpe <logang@deltatee.com>

On Wed, Jan 22, 2020 at 04:15:13PM +0300, Alexander Fomichev wrote:
> Somehow this patch was lost. The problem is still actual.
> Please, add to upstream.
> 
> On Wed, Jul 10, 2019 at 11:44:27AM +0300, Alexander Fomichev wrote:
> > ntb_mw_set_trans should work as ntb_mw_clear_trans when size == 0 and/or
> > addr == 0. But error in xlate_pos checking condition prevents this.
> > Fix the condition to make ntb_mw_clear_trans working.
> > 
> > Signed-off-by: Alexander Fomichev <fomichev.ru@gmail.com>
> > Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> > ---
> >  drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> > index 1e2f627d3bac..19d46af19650 100644
> > --- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> > +++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
> > @@ -299,7 +299,7 @@ static int switchtec_ntb_mw_set_trans(struct ntb_dev *ntb, int pidx, int widx,
> >  	if (widx >= switchtec_ntb_mw_count(ntb, pidx))
> >  		return -EINVAL;
> >  
> > -	if (xlate_pos < 12)
> > +	if (size != 0 && xlate_pos < 12)
> >  		return -EINVAL;
> >  
> >  	if (!IS_ALIGNED(addr, BIT_ULL(xlate_pos))) {
> > -- 
> > 2.17.1
> 
> -- 
> Regards,
>   Alexander

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200303123223.i3fvwfmbhklfq2l5%40yadro.com.
