Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBAVWUTZQKGQESSCBIWQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id D60B9181EC6
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Mar 2020 18:08:19 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id b72sf1854696ilg.16
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Mar 2020 10:08:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583946498; cv=pass;
        d=google.com; s=arc-20160816;
        b=hcut2CSXxTQST1Sxa9+2Vaix44CLQHrEsBnNZ4X0BF8sI3kXXBl0rY8ZPh+lzpJZhV
         bDqyUAFQOVyBfMZOeVkjmWKUPtyXyva480CdRq1os3O+dlqfAUa1dmhMe6WCUsH/sy7/
         oTCXErDf/OwfkVTRn+/jdj36TY/LdbyUgEKHaSt+Hki96NM2qjr3qXGUzPfbIic8Z8DQ
         /mFOjDP+WsHBuxJJ7uCa7GwI2Kd8pj7qv+FHdxCW9EL5J/Cc6AuyxRx4KG9fyeAYtQIh
         /5QQdtZ59W2ZwxrU7Dn+QyX2XyFgHfXKufym/0sTfbpIpxBA+wvFfM2rbJV4qblLY4De
         dsrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=awQX8z8uRATAjECbw0kZ+sNpc8iXe4S2R/47vt9dtu8=;
        b=PociGnn9a1TRxHxTmQxlMSP/psqWHTD7PvKxWIpCMAsMt+nMNCcsppUH5Gj9wrN1LN
         v9PIf1S+M5ssEwdJ0zT89x5HJsg2YLUqD5/YIf2RsOwD/Z23TK/Ke1S2K9SKyDYZjRI+
         cFil65hqlES3BUNMuq0bNabBDsW0BQjnsbRVE7u+BTfxJEaLRbIq0EUD3V8eW/2oPfTH
         9X9JQ7otE8UQ4hiPAOZJ33ViVuswZwCq0yH9XzVsbr3wqfzcuuULvqgbDZtrUBKSW6nr
         7eb+rIo6t/gGrqOfjp6/1AV9i6B7JsZ+RcKZ9gJJXLpUFMcKduSjZ0fbUH+da4X+n61k
         30RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=awQX8z8uRATAjECbw0kZ+sNpc8iXe4S2R/47vt9dtu8=;
        b=HELiHD4lt4S/NiSEh0J2XGvARss1xc9ovJMiAy2FI7BkgzjmlPbjYvxBjkap6kKneS
         HODOVMgEs+o5IbqXMIDo1RfYnx7q1LeCEX/YaSzseir2+tZwOtJ+X7Tl0D6XDz5tqlSk
         UMonL52jA416mVqcCG2AvLzzyYNrxUQ1HFo357thM4wg33Nm60JAg5efW7gTsluEbU7Y
         gLXIsGW6dZyXWYUdI2FtHrqicE570H15AYF/KS3SI7zJ+VZxuSGvLB/aZ9I8w7CIgiGP
         DtgnNaBU66aUO5Xk6Oy+fFn5egaq3O0i/tmisjVQYzatirsGFJyhgnOvOjsSQpQugjDB
         dkAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=awQX8z8uRATAjECbw0kZ+sNpc8iXe4S2R/47vt9dtu8=;
        b=CLcfhq1fmGvRf3IkO3vQxWrhHhl5vGinUBf6BRFrLASuiFWCdUojxXMT3uhQJlvYdH
         1rI+xiJiX+WWgZ6Xdab+Oe4sV5lJEZU6Uv8pAX16cGOTBUCqp+Lx1mX+NprY+I9nOr7w
         FRMIS8BoAYKunPgedt/KbmqF43ZyXyEptMEByQOaC+WxehVDL7hHJPjiylNluXYrhxxI
         4kBPmuZonjU3PbZxUUEng6NRUVd9cUx7hLtjitfP4hXxgbBeUnvHHC6HW6YJjJFlc9B8
         1/GEj03V+miOvQSa7TpTqA5svml5X0f9nP6Qmvyvq5VgAvvteNe/HuU3cOnRcRS9yJpj
         0eeA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ2m3bvWYU5nwF+pCW8TJ1t5boQW2oEMShx4o2MV9dpXt+aApfE7
	Itx9VJQhyGuqJJlzxAjl9+Y=
X-Google-Smtp-Source: ADFU+vuQfEcX5Mowma5iPMLTyEYfR0Y/xrVIWswL62XbP0A22LC7K43vwC15w+pDOSpvqrTupu/tCA==
X-Received: by 2002:a5d:814a:: with SMTP id f10mr3676606ioo.7.1583946498489;
        Wed, 11 Mar 2020 10:08:18 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:9057:: with SMTP id v23ls553129ioq.5.gmail; Wed, 11 Mar
 2020 10:08:18 -0700 (PDT)
X-Received: by 2002:a6b:d207:: with SMTP id q7mr3760715iob.49.1583946497611;
        Wed, 11 Mar 2020 10:08:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583946497; cv=none;
        d=google.com; s=arc-20160816;
        b=VmexoII49M8yuqHlRLCyjD7uu/1cnftAEdQVllfbhrtqwNiScE5uynMEOyg5EECbUG
         j8fdTEJF7Ccwx5GSJ+/weoGk72tTXqBJRxuC6Ojydg2G/Vs0F+puJ3U//0WQT1oB4xXx
         fHtNDE6+oUYH7cAFO3UmdgcneRQ2RMYPch0QJFIAikGyFi0icV/Fc7xoL40AwlHHd6G7
         bDCKUd0kl0XdgVh6cK0VioEXcKHlOL3fwjffUuhangDS2y5QAhrfFPknYI2kS+OqDjhH
         hO1C/q9prysCtcaKJdIhDOJVVKqHYlhN8q7VR7LDdQ+uG0GEl1MVBSbFmZMcBboHz0Tl
         n0Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=ZKBKmdtH0TAlqJHMD74AWvdbzOg4nain7J1lrO6n6eE=;
        b=X9VLO7/WKk41qVd4Ma2sCw5TQ66dRtCJoFrWEKx7zloy9Z9ycRgWWgJu05ni6fZh74
         cyR+WetyntQGtiwup7dn9d1PaUYs1oJh+JYm1LzOdkYAlzlNX8KZ1y2aq1732BgbJrZl
         olrqjEf5nhiffBbXB0cp8PpAYWifUbyOcZ763bFHyKfmQh76K9/rjQM+ld4ZL3xrBpCt
         L8wGZ1/+Klz3RCQXl7gpZKV+HSHbGwJ2SP4dunAmxuFTAcCsOjEZOljjrMNKEi4S7HhK
         M5BDR8sKv5jqxBK4aStM57i85+yiCFTv9SlacvKzPlPGogGHEnGQI2Al1Gxdonq5nfRg
         nezA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id r16si86497iot.3.2020.03.11.10.08.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 10:08:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230] helo=[192.168.11.155])
	by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1jC4q5-0004YQ-3X; Wed, 11 Mar 2020 11:08:14 -0600
To: Takashi Iwai <tiwai@suse.de>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com
References: <20200311084917.18592-1-tiwai@suse.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <03f25a1e-c72f-8fd8-d23e-f0da5e8d39b4@deltatee.com>
Date: Wed, 11 Mar 2020 11:08:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200311084917.18592-1-tiwai@suse.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, tiwai@suse.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	MYRULES_FREE,SURBL_BLOCKED,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] NTB: ntb_transport: Use scnprintf() for avoiding
 potential buffer overflow
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of logang@deltatee.com designates 207.54.116.67 as
 permitted sender) smtp.mailfrom=logang@deltatee.com
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



On 2020-03-11 2:49 a.m., Takashi Iwai wrote:
> Since snprintf() returns the would-be-output size instead of the
> actual output size, the succeeding calls may go beyond the given
> buffer limit.  Fix it by replacing with scnprintf().
> 
> Signed-off-by: Takashi Iwai <tiwai@suse.de>

Makes sense. Looks good to me!

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Thanks!

> ---
>  drivers/ntb/ntb_transport.c | 58 ++++++++++++++++++++++-----------------------
>  1 file changed, 29 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/ntb/ntb_transport.c b/drivers/ntb/ntb_transport.c
> index 00a5d5764993..e6d1f5b298f3 100644
> --- a/drivers/ntb/ntb_transport.c
> +++ b/drivers/ntb/ntb_transport.c
> @@ -481,70 +481,70 @@ static ssize_t debugfs_read(struct file *filp, char __user *ubuf, size_t count,
>  		return -ENOMEM;
>  
>  	out_offset = 0;
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "\nNTB QP stats:\n\n");
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "rx_bytes - \t%llu\n", qp->rx_bytes);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "rx_pkts - \t%llu\n", qp->rx_pkts);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "rx_memcpy - \t%llu\n", qp->rx_memcpy);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "rx_async - \t%llu\n", qp->rx_async);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "rx_ring_empty - %llu\n", qp->rx_ring_empty);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "rx_err_no_buf - %llu\n", qp->rx_err_no_buf);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "rx_err_oflow - \t%llu\n", qp->rx_err_oflow);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "rx_err_ver - \t%llu\n", qp->rx_err_ver);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "rx_buff - \t0x%p\n", qp->rx_buff);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "rx_index - \t%u\n", qp->rx_index);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "rx_max_entry - \t%u\n", qp->rx_max_entry);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "rx_alloc_entry - \t%u\n\n", qp->rx_alloc_entry);
>  
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "tx_bytes - \t%llu\n", qp->tx_bytes);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "tx_pkts - \t%llu\n", qp->tx_pkts);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "tx_memcpy - \t%llu\n", qp->tx_memcpy);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "tx_async - \t%llu\n", qp->tx_async);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "tx_ring_full - \t%llu\n", qp->tx_ring_full);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "tx_err_no_buf - %llu\n", qp->tx_err_no_buf);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "tx_mw - \t0x%p\n", qp->tx_mw);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "tx_index (H) - \t%u\n", qp->tx_index);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "RRI (T) - \t%u\n",
>  			       qp->remote_rx_info->entry);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "tx_max_entry - \t%u\n", qp->tx_max_entry);
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "free tx - \t%u\n",
>  			       ntb_transport_tx_free_entry(qp));
>  
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "\n");
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "Using TX DMA - \t%s\n",
>  			       qp->tx_dma_chan ? "Yes" : "No");
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "Using RX DMA - \t%s\n",
>  			       qp->rx_dma_chan ? "Yes" : "No");
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "QP Link - \t%s\n",
>  			       qp->link_is_up ? "Up" : "Down");
> -	out_offset += snprintf(buf + out_offset, out_count - out_offset,
> +	out_offset += scnprintf(buf + out_offset, out_count - out_offset,
>  			       "\n");
>  
>  	if (out_offset > out_count)
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/03f25a1e-c72f-8fd8-d23e-f0da5e8d39b4%40deltatee.com.
