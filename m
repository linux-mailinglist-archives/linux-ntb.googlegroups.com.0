Return-Path: <linux-ntb+bncBCS4BDN7YUCRBPMX2D3AKGQEMAQS2MY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 176E31E9A46
	for <lists+linux-ntb@lfdr.de>; Sun, 31 May 2020 21:55:43 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id e20sf273548ybc.23
        for <lists+linux-ntb@lfdr.de>; Sun, 31 May 2020 12:55:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590954942; cv=pass;
        d=google.com; s=arc-20160816;
        b=BBum/gjhJw+K5FOnKTrzPXMKZPwO2JFTaOyx2DRN60KDZiJAyTbCCqZO3weun87ccj
         Dh28bAeaaWHZF3v9A3vjQgDQWzSmjmUAAsd3W6j6qd4U2Jnmz9HNTq1tOtSQcLTHpYtz
         /LLlvPonmiNS31ZdtHqDSwuo+L/xmvd9jI1BQPykTzP+8RI62V3RSaY6doprnVpae/yE
         CJncr1jeRIiVKE7+6eqWaqo4HirKOHcbaTM42n82e8KTkzZ+PLI689KauvYj/UcZVqMb
         +czlGO8NrwQgUtbg67NvApgl/TpfO7g8XoKpCtBaolmpCCPV0ogE/KudYA8LHIyzavt5
         quQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=zQB59Awkbd6WQYQ5w/Lm9IBpgLB7qv3S4R5DIU/mrss=;
        b=WGZGnYn0Od35V6Ws63Emd+0jfpvPgBoyvYNWPeh3S8wA5zPfJ4WyMuU/sblhk4GDVh
         RxPzdsWsrLtBicNcv6W9M/8Z9z08ytX94fwFsJHQLzx/fYIKdbgmQ7AtUy75avNVQEri
         03ooZOvnfDwP6n9D5HMw2IwZPOVbp7Q6K10jNJsutaeSUNiyfsZyPXEmSA/KB4Q5BZkx
         tOdBDU+dQQ9JW6Z6wHrUmojtExqQ3mn2YS4cWsSjlAOhqVF8sK5mUPnuP6nbs2eHeHBa
         udWn1UNlx+ubOmlSIy0rTXkHTGN6y+8NAal6TvN2YjgfDYKCCh9RQLVMhrgg9AG+sqd8
         Y1xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=MTo6rL+D;
       spf=neutral (google.com: 2607:f8b0:4864:20::841 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zQB59Awkbd6WQYQ5w/Lm9IBpgLB7qv3S4R5DIU/mrss=;
        b=c7FXep8fEh3/1CEYxbO+V+tI25weShj30kK8K34g5HImEq+rcKWEgh4MgK5bv8VNrK
         3wfbOdrKiMk/V8TT+2JThxU9jjzEhTMtZTriXU98JfKdbhKWGPfNdyf+flOHSPSb64Ro
         lMta/Y/TnqcTadPi+Nhqeb7IBFBhJmhlWQ1+R4cuLf8klBcU9t5pxsEyovd+fwT0jGk4
         qhalwvEQvyeYJAVlrACofqpDF9zq12QDZy35u3YoYnleuCJo6lb1PgEA/ZeS7EQmyK3T
         jnUS845s/yCuPq4TG3tKJ+5BC2xt+iw7QWBy54OjAWl96pZpj8UN9pPbFFk9Kjr/5bIA
         4OIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zQB59Awkbd6WQYQ5w/Lm9IBpgLB7qv3S4R5DIU/mrss=;
        b=Z0BdPMZsLYmaDcJOYRmUi6MqkhyGiZcCWomO2ML+hmwjOGmfGw1fmwe9zElPljQqaD
         yyapuYSHvcqNeWO6vOydW7eNkgL83MeeY8OpvQhSbuh2xQGgGufQ/1vijD49T63GMAY9
         G5GjdQF111tVb8oqLIaa4f5TrI0AK7QLtGcy7sSZY/RU315dhjWBDRkKfEwRDIKDjKvF
         6dVpJLtoxefcTdnGp2QgOz7bZKyXX9Wday7KKWwAbnmqeDYZA8mgX1Pb+nsyOiBzq52J
         K6LtdIPjbJ5pf8WJCxDsEsli3jPf9XTfp7NYXr0VgbFx0yVLs1RzutMQwbUcbqByLaic
         Enig==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532FPkLJUqbuLJTAxemmpKTZY69f/1a3fHDIQfuohjxqKl0Kx1TS
	qQlPLXzGFZ+j3zwIFXpKUpA=
X-Google-Smtp-Source: ABdhPJzdY9TeS1Frc4xN58cMsyu3jAduIO0u8gYg5Yq+owTvlr3pFv6rurD5E2xJLx+tTxQqkhvJww==
X-Received: by 2002:a25:c4c2:: with SMTP id u185mr29193697ybf.79.1590954942067;
        Sun, 31 May 2020 12:55:42 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6902:72b:: with SMTP id l11ls4486797ybt.8.gmail; Sun, 31
 May 2020 12:55:41 -0700 (PDT)
X-Received: by 2002:a25:ab4a:: with SMTP id u68mr4735595ybi.271.1590954941717;
        Sun, 31 May 2020 12:55:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590954941; cv=none;
        d=google.com; s=arc-20160816;
        b=RpDYBSl/gElRQ/ovaL2LyibwVAIBHf8Bk5u3ZBlyOC/LTKFRq2LWWa/I3xiZ1zxLdM
         WhHhIuRbtHmpijA/NNf0zIx0X3a7BMvR+QSWLWWYJXST2j6Gq68oxbk2/dbzdY5DgDSA
         GI+BQ3dAzA/frE9KfhkKiE1KZ8xtP9BmiSTrEC1aJMvD7HkPbf1H5K3DsJKlWC8G86Z4
         VVz+lAXj7azn6qqTOJo4cXrvB+syx79e3TVrfnHi7yvrfrZTh7mxChdnfgcvDgOdz69V
         E6afPfbOBiJ70tvZqCAthNXGdic9t/9d+IQ4LURSWg2z5iqqyPHmecxcMHKW8jcB3NRw
         PBEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=p16Dz6KwMTsKYcEwRz28WdITu61eUhpMtwje0OvV48U=;
        b=0TEjuk//LDFNiPQF/r0CCZFrbz5IQsHxJvz2uuQ5d+lHqpXLTAKljQxXP5QLYNduKw
         0layZTi0cyd+k8CptYrNWnx7CTdeN8JxCB5pppqnwpKyxVekxEh5+qNr+uPUYQTeaNb9
         FRFbFwTBm4VK/8jmnTjC4hrKRf9RruymKAvIMVFkN60R4a8BUMrYuS3AZrVKdKyWNsg0
         46B4TeUxiRGSCIuaJy41IZNjpm24E2RW799OAMGgqF0VVJOKHHXd+RVwkP0dIgv8XoCU
         yNzkmipL3SVgKVsp7XK0+kn9q7jXILImtnMFSJjxv3SsLdbYoKFgHU9HJgPpWJDmIibL
         jP0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=MTo6rL+D;
       spf=neutral (google.com: 2607:f8b0:4864:20::841 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id u126si1084414ybg.0.2020.05.31.12.55.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 May 2020 12:55:41 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::841 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id z1so6216604qtn.2
        for <linux-ntb@googlegroups.com>; Sun, 31 May 2020 12:55:41 -0700 (PDT)
X-Received: by 2002:ac8:2f7a:: with SMTP id k55mr18787986qta.34.1590954941399;
        Sun, 31 May 2020 12:55:41 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a664:2e00:a5da:931a:7f23:1d4d])
        by smtp.gmail.com with ESMTPSA id s4sm12308438qkh.120.2020.05.31.12.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 May 2020 12:55:41 -0700 (PDT)
Date: Sun, 31 May 2020 15:55:39 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Wesley Sheng <wesley.sheng@amd.com>
Cc: dave.jiang@intel.com, allenbh@gmail.com, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org, wesleyshenggit@sina.com
Subject: Re: [PATCH] NTB: correct ntb_peer_spad_addr and ntb_peer_spad_read
 comment typos
Message-ID: <20200531195539.GD4620@kudzu.us>
References: <20200526075943.20756-1-wesley.sheng@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200526075943.20756-1-wesley.sheng@amd.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=MTo6rL+D;       spf=neutral (google.com: 2607:f8b0:4864:20::841 is
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

On Tue, May 26, 2020 at 03:59:43PM +0800, Wesley Sheng wrote:
> The comment for ntb_peer_spad_addr and ntb_peer_spad_read
> incorrectly referred to peer doorbell register and local
> scratchpad register.
> 
> Signed-off-by: Wesley Sheng <wesley.sheng@amd.com>

Pulled into the ntb branch

Thanks,
Jon

> ---
>  include/linux/ntb.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/ntb.h b/include/linux/ntb.h
> index 8c13538aeffe..b9b0d805d0f9 100644
> --- a/include/linux/ntb.h
> +++ b/include/linux/ntb.h
> @@ -1351,7 +1351,7 @@ static inline int ntb_spad_write(struct ntb_dev *ntb, int sidx, u32 val)
>   * @sidx:	Scratchpad index.
>   * @spad_addr:	OUT - The address of the peer scratchpad register.
>   *
> - * Return the address of the peer doorbell register.  This may be used, for
> + * Return the address of the peer scratchpad register.  This may be used, for
>   * example, by drivers that offload memory copy operations to a dma engine.
>   *
>   * Return: Zero on success, otherwise an error number.
> @@ -1373,7 +1373,7 @@ static inline int ntb_peer_spad_addr(struct ntb_dev *ntb, int pidx, int sidx,
>   *
>   * Read the peer scratchpad register, and return the value.
>   *
> - * Return: The value of the local scratchpad register.
> + * Return: The value of the peer scratchpad register.
>   */
>  static inline u32 ntb_peer_spad_read(struct ntb_dev *ntb, int pidx, int sidx)
>  {
> -- 
> 2.16.2
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200531195539.GD4620%40kudzu.us.
