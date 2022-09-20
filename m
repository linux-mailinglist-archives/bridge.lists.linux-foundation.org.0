Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF7F5BDEC3
	for <lists.bridge@lfdr.de>; Tue, 20 Sep 2022 09:49:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4454881985;
	Tue, 20 Sep 2022 07:49:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4454881985
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=6wind.com header.i=@6wind.com header.a=rsa-sha256 header.s=google header.b=T1VA8FNm
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tXTl1lj1Wlrz; Tue, 20 Sep 2022 07:49:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id AB03881980;
	Tue, 20 Sep 2022 07:49:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB03881980
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6D635C0070;
	Tue, 20 Sep 2022 07:49:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A9426C002D
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 07:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 847D181985
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 07:49:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 847D181985
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Au9FFvbzhhoz for <bridge@lists.linux-foundation.org>;
 Tue, 20 Sep 2022 07:49:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 437CC81980
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 437CC81980
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 07:49:30 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id n10so2794604wrw.12
 for <bridge@lists.linux-foundation.org>; Tue, 20 Sep 2022 00:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=content-transfer-encoding:in-reply-to:organization:from:references
 :cc:to:content-language:subject:reply-to:user-agent:mime-version
 :date:message-id:from:to:cc:subject:date;
 bh=M6+ne4OFKqc2mKK0wgRF6R/AO4uBhWAl+SeCBkxb194=;
 b=T1VA8FNm+ynrkpHjD70GZE1SFBOPeLxjYfo+0xvj1oSqPS0xUluytok2jm8QWvq/dl
 BQGjmPPjdv0mQKdJqX2q2P4ndl1YilSeEDcMppKIza+p7J8S7XnkCssKTT0bF/gnv15S
 DW4KC/g1Hr1BytfL/Mak9/ZhoSHgQ76GPgx9SDR8lnWYDOLHCEiUJOrbSKY/6A1Xwax2
 XXr2SOsG6AdPdhiXd6oEpTK857P7JFma0JdutIpKaHwQGxGqMF+KljRFd40gX51KZak9
 lk5IbS+n6B59cPPs4PdeWqf03WwCbw4z669TWnXCD+OHV/n/tt7CHyZptl2GrMuBt/l4
 VSVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:organization:from:references
 :cc:to:content-language:subject:reply-to:user-agent:mime-version
 :date:message-id:x-gm-message-state:from:to:cc:subject:date;
 bh=M6+ne4OFKqc2mKK0wgRF6R/AO4uBhWAl+SeCBkxb194=;
 b=6+ovrSw/T8mfXj8SghKpQBRUmVqHQp/a4hj/nOVkCMK/sSO5NqhtqivsGVz8Os9HeZ
 WwXM5ze2yVHv/497X4Skpli5BeT8+U16tTHxJpm99mncSUA8qe0EirjQLPyi6UFpcyi1
 R5MmzmZ2xus6ymQ8dZHILBomTM4cv9x4hQWMAhc0f48r0kF+eoi93QuVmAPl8gNfDIzB
 AINOahtRJ8UJFHPq4IVXMKKSQrc7Ym0sWJcrpYVdHXoTt+2c30FEJvTIpoz8digXA1Nh
 Ss1NJbSD7OU7UWHUD6X/mzCvmzUIisRgC+2bRovIf9wbt0Siff9g2kzfc/kemawM+jw3
 Cecw==
X-Gm-Message-State: ACrzQf2/ZwMwmkR6i08BKyTfDI2++iSP6+/Zfw5d3uspUaCgPI+Nlqtl
 MZskFPpnp5t1k5LiI/8HVgBMqw==
X-Google-Smtp-Source: AMsMyM78ynE1NLC0tTzLR91DvF2v43osaTx4a+H7Cjq9r8jkqJQdZOha14Xcr4/4xHlLNO2lc2jV3w==
X-Received: by 2002:a5d:5312:0:b0:228:cc9e:b70f with SMTP id
 e18-20020a5d5312000000b00228cc9eb70fmr13263142wrv.11.1663660168186; 
 Tue, 20 Sep 2022 00:49:28 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:b41:c160:ad91:24d8:d1d3:3b41?
 ([2a01:e0a:b41:c160:ad91:24d8:d1d3:3b41])
 by smtp.gmail.com with ESMTPSA id
 t1-20020a05600001c100b0021e51c039c5sm801894wrx.80.2022.09.20.00.49.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Sep 2022 00:49:27 -0700 (PDT)
Message-ID: <0198618f-7b52-3023-5e9f-b38c49af1677@6wind.com>
Date: Tue, 20 Sep 2022 09:49:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Nikolay Aleksandrov <razor@blackwall.org>, netdev@vger.kernel.org
References: <20220413105202.2616106-1-razor@blackwall.org>
 <20220413105202.2616106-5-razor@blackwall.org>
From: Nicolas Dichtel <nicolas.dichtel@6wind.com>
Organization: 6WIND
In-Reply-To: <20220413105202.2616106-5-razor@blackwall.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: dsahern@kernel.org, bridge@lists.linux-foundation.org, idosch@idosch.org,
 roopa@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v4 04/12] net: netlink: add NLM_F_BULK
 delete request modifier
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Reply-To: nicolas.dichtel@6wind.com
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>


Le 13/04/2022 à 12:51, Nikolay Aleksandrov a écrit :
> Add a new delete request modifier called NLM_F_BULK which, when
> supported, would cause the request to delete multiple objects. The flag
> is a convenient way to signal that a multiple delete operation is
> requested which can be gradually added to different delete requests. In
> order to make sure older kernels will error out if the operation is not
> supported instead of doing something unintended we have to break a
> required condition when implementing support for this flag, f.e. for
> neighbors we will omit the mandatory mac address attribute.
> Initially it will be used to add flush with filtering support for bridge
> fdbs, but it also opens the door to add similar support to others.
> 
> Signed-off-by: Nikolay Aleksandrov <razor@blackwall.org>
> ---
>  include/uapi/linux/netlink.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/uapi/linux/netlink.h b/include/uapi/linux/netlink.h
> index 4c0cde075c27..855dffb4c1c3 100644
> --- a/include/uapi/linux/netlink.h
> +++ b/include/uapi/linux/netlink.h
> @@ -72,6 +72,7 @@ struct nlmsghdr {
>  
>  /* Modifiers to DELETE request */
>  #define NLM_F_NONREC	0x100	/* Do not delete recursively	*/
> +#define NLM_F_BULK	0x200	/* Delete multiple objects	*/
Sorry to reply to an old patch, but FWIW, this patch broke the uAPI.
One of our applications was using NLM_F_EXCL with RTM_DELTFILTER. This is
conceptually wrong but it was working. After this patch, the kernel returns an
error (EOPNOTSUPP).

Here is the patch series:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/log/?h=92716869375b

We probably can't do anything now, but to avoid this in the future, I see only
two options:
 - enforce flags validation depending on the operation (but this may break some
   existing apps)
 - stop adding new flags that overlap between NEW and DEL operations (by adding
   a comment or defining dummy flags).

Any thoughts?

Regards,
Nicolas
