Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBIMOUDZQKGQEMTQSEMY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 098CB180A7E
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 22:31:15 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id r10sf9342900pgu.22
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Mar 2020 14:31:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583875873; cv=pass;
        d=google.com; s=arc-20160816;
        b=lwtr0XbDBD17r3fa6AnjTIgrXNTr7+DWptB4gUK8J//BtDRy1pGUOLcQYDn6qpEdPA
         Rrs8Z/Olv/0xOZOdHk5iI4gv3Ew6UE8rv/f65rO+9qvY3ptoMa3jgTFQlv7a/kQniny/
         3/+D+nV5kTSKA2UsAvCFHdEgrRQ+YugIWVaQkVkhssbmK68Ua3VRwMzLl9P8M19QgPXh
         FxeGF0pTdwuuQKVPY+Y1oYxpMCkFVY6hw4bhkm3TaaqRpHTWFjggBrCElA4w8P64F4u9
         ZC9BJ4bcw3hOfBTMruYiV0qTiCdnA0ehH33A1f3ie4K8weFzIQSPkGDJAv4BmOGZdCJi
         f06A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=eET8gTDcgx9xA+VtLwS037uypttHh51HUuLiPsIHwRM=;
        b=Xxduaby7WKT3bmjGDS4+EgFYHFVwY+jZh0ulb63AS4xD/OlcK9rOx1yjyqJv6+YfYc
         /dtfE0Mbo0WvdJvfaPUQ1xidyBd/37alA2rxkF+HC3UpC37Iag26K1D2jC/BZ1z4OVWB
         JG3D9wavMH1O1hdeiSq+X1osBsTkz0NpgmTx9o4SkFwk79f3As9HXS6NUxn22rp+B39a
         BLmp8aMeg1tU5+5YjjhQBdSbMz9d8fMSEd4njsDJ4x2KXm2aoG/AX3ktgIcHs6mGb83q
         W0v72u0KHFk68EYokb9T+w5COxQEPe7Fe+4VImgAfyxhTMrbZMUe8h/rMk3cZNINGAkb
         tEZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eET8gTDcgx9xA+VtLwS037uypttHh51HUuLiPsIHwRM=;
        b=gHoO++9c+8xlwDhAtVmkGGXfCPt1+GiYOvj7YE5fq111+mxUqYcrCZH8SPdeGOeyBJ
         ntYdwxbmjI3pKnj+tX60uYRr4y4HOivhBtpAfm5BEMddHbiMoZArO1C4AXTiSD4KRzVt
         3/I/VZUOADB/lb6IdYgAK2T6DR/tQIfc4ubdZFZH/BovppCrMRzZpvo5+Rgcpd6xZ7rt
         GlJs5FYLJmRQU2pMlKUG6pjHJq9hg1LFH3R81EpOBQmBaKMYMTsadzRvC+/B7YjFOOoi
         Gqvhzr/Gq1UuufaQbkvc5vM8TJsy+K+JxcF3utq+wLYTJWBU45JjXm9Tc9YdUyg3BoAH
         W1JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eET8gTDcgx9xA+VtLwS037uypttHh51HUuLiPsIHwRM=;
        b=VPr44yExnakj0N055y1+jewRIrrJ1TDOnHNOV55H8i5W2mMRNhMs9hlHhfh0bSe3/4
         PUmjBKNkDpZDNvM6aIYr0GgxqbV13Hwpdsjq835oeVelUIDklgF4tDIGVpvYTTuKbsoh
         dKJwoxXkMx/t509IHS5hUvV1SMxW5K4f3qgsChOoaTnFZ3YiuGvppv6/Kq2fb6wGEOUT
         Mg9hxM78kgawZo+1gNp2q57v38ASuuSrxb73dHLOstztu66pFa1vGB4Im6ghBuSp6NjM
         l+U34jeJG9h1bmVQWzC3/k+Zo52QyoB3tj7832nv8FnWuG996FiBHzyybCjM3vfyDXTK
         EgMA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ3HzJEX8qfQ00GsWd/UZqFUcaLhoGJ34mV+mvObuNb+FnVRXZbN
	UUAJDPCx18aAqSaBDFRR9MA=
X-Google-Smtp-Source: ADFU+vuWzL0AdVkKesa+Wcrz9CWS538Ul+s7R+2fa5Pk/Jb99RAT1DTPIY4fc6iF8eOglcn0wukjQA==
X-Received: by 2002:a17:902:b68e:: with SMTP id c14mr22120251pls.140.1583875873636;
        Tue, 10 Mar 2020 14:31:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls5430992pfn.2.gmail; Tue, 10 Mar
 2020 14:31:13 -0700 (PDT)
X-Received: by 2002:a63:1003:: with SMTP id f3mr23246094pgl.450.1583875873164;
        Tue, 10 Mar 2020 14:31:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583875873; cv=none;
        d=google.com; s=arc-20160816;
        b=eijwiuDESnka5RdpwcjJ4yDLxdG4mYa6rJFyPmoAkXeKdE0dNOlrCKG7G8I/kk4uwJ
         ROTsQICF0Bct3g75ZnUv/bemBfVbKqarQEs3AoTektG3MkgDau+GG7WxFbLkaFXE29S5
         qzqynhvDIi8O4R+jBlYG6cKNpvAb1s+INAZHnGyOPDAp5oLumW/RCCugRHkz+5aK9HAC
         eMYm/E0r738j8ItvzHEmioy7u7eoMBr6hnr5aJliQC8/hSL2DY0/41Ly9EHLWNmOyVpW
         GwKvuQEUDDFP+wvCMmzHcdnllhdvQEdz9aXiplYLfYiJPqyojNPzWuE701YxK7iDR7P2
         MgAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=sbmScAS5oDiHwfYtKwdT+LgtGu9qi5J/RARX9y2ASvk=;
        b=k7+VrT5Oyov1eRgedKOtyXCqD8tIF34f8sKWOd3A1OnO+5oj71JUWoF6gKL12JVQgC
         N09om83F+PqYnnLRIHp2Mxpwq/1zAo1m/nv336CshXIiLIiD1Eoe2SFZV4inLyO6EhZj
         z08MSfCJSh2zscRKDwn7sUE9NVFbKzXwrjJGr6u3iqrYTk830lDm7R2m/3/+g0I61Lli
         9B4j+A2efu/DFAzH/X0nwnqUeGQwvveMEgsVnswQiM7ynNreQJxyb/XUAzwXloG8vgM3
         wnxNO1Q1uOBf22R/80ZORXZ3vyEQ35ghtzxZCO2OAvefBNk3+GWqenVDNDrE+apYfuLe
         2AHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id q1si8390pff.4.2020.03.10.14.31.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 14:31:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
	by ale.deltatee.com with esmtp (Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1jBmT1-0001Zy-DR; Tue, 10 Mar 2020 15:31:12 -0600
To: Sanjay R Mehta <sanju.mehta@amd.com>, jdmason@kudzu.us,
 dave.jiang@intel.com, allenbh@gmail.com, arindam.nath@amd.com,
 Shyam-sundar.S-k@amd.com
Cc: linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org
References: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
 <1583873694-19151-3-git-send-email-sanju.mehta@amd.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <3c350277-8fe6-04b2-673e-7d4c8fb6ce24@deltatee.com>
Date: Tue, 10 Mar 2020 15:31:10 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1583873694-19151-3-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, Shyam-sundar.S-k@amd.com, arindam.nath@amd.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, sanju.mehta@amd.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 2/5] ntb_perf: send command in response to EAGAIN
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



On 2020-03-10 2:54 p.m., Sanjay R Mehta wrote:
> From: Arindam Nath <arindam.nath@amd.com>
> 
> perf_spad_cmd_send() and perf_msg_cmd_send() return
> -EAGAIN after trying to send commands for a maximum
> of MSG_TRIES re-tries. But currently there is no
> handling for this error. These functions are invoked
> from perf_service_work() through function pointers,
> so rather than simply call these functions is not
> enough. We need to make sure to invoke them again in
> case of -EAGAIN. Since peer status bits were cleared
> before calling these functions, we set the same status
> bits before queueing the work again for later invocation.
> This way we simply won't go ahead and initialize the
> XLAT registers wrongfully in case sending the very first
> command itself fails.

So what happens if there's an actual non-recoverable error that causes
perf_msg_cmd_send() to fail? Are you proposing it just requeues high
priority work forever?

I never really reviewed this stuff properly but it looks like it has a
bunch of problems. Using the high priority work queue for some low
priority setup work seems wrong, at the very least. The spad and msg
send loops also look like they have a bunch of inter-host race condition
problems as well. Yikes.

Logan



> Signed-off-by: Arindam Nath <arindam.nath@amd.com>
> Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
> ---
>  drivers/ntb/test/ntb_perf.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
> index 6d16628..9068e42 100644
> --- a/drivers/ntb/test/ntb_perf.c
> +++ b/drivers/ntb/test/ntb_perf.c
> @@ -625,14 +625,24 @@ static void perf_service_work(struct work_struct *work)
>  {
>  	struct perf_peer *peer = to_peer_service(work);
>  
> -	if (test_and_clear_bit(PERF_CMD_SSIZE, &peer->sts))
> -		perf_cmd_send(peer, PERF_CMD_SSIZE, peer->outbuf_size);
> +	if (test_and_clear_bit(PERF_CMD_SSIZE, &peer->sts)) {
> +		if (perf_cmd_send(peer, PERF_CMD_SSIZE, peer->outbuf_size)
> +		    == -EAGAIN) {
> +			set_bit(PERF_CMD_SSIZE, &peer->sts);
> +			(void)queue_work(system_highpri_wq, &peer->service);
> +		}
> +	}
>  
>  	if (test_and_clear_bit(PERF_CMD_RSIZE, &peer->sts))
>  		perf_setup_inbuf(peer);
>  
> -	if (test_and_clear_bit(PERF_CMD_SXLAT, &peer->sts))
> -		perf_cmd_send(peer, PERF_CMD_SXLAT, peer->inbuf_xlat);
> +	if (test_and_clear_bit(PERF_CMD_SXLAT, &peer->sts)) {
> +		if (perf_cmd_send(peer, PERF_CMD_SXLAT, peer->inbuf_xlat)
> +		    == -EAGAIN) {
> +			set_bit(PERF_CMD_SXLAT, &peer->sts);
> +			(void)queue_work(system_highpri_wq, &peer->service);
> +		}
> +	}
>  
>  	if (test_and_clear_bit(PERF_CMD_RXLAT, &peer->sts))
>  		perf_setup_outbuf(peer);
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/3c350277-8fe6-04b2-673e-7d4c8fb6ce24%40deltatee.com.
