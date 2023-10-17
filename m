Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F12197CBF51
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:29:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F149D81FC5;
	Tue, 17 Oct 2023 09:29:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F149D81FC5
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=fFeNiuQh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ww2EtDVC5FXY; Tue, 17 Oct 2023 09:29:32 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 9F2AD813B5;
	Tue, 17 Oct 2023 09:29:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F2AD813B5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4B249C0DD3;
	Tue, 17 Oct 2023 09:29:31 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E4656C0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:29:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B22F681FC5
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B22F681FC5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uw2prKl2hcga for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:29:29 +0000 (UTC)
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EF23E813B5
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:29:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EF23E813B5
Received: by mail-wr1-x42c.google.com with SMTP id
 ffacd0b85a97d-32c9f2ce71aso4406868f8f.1
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697534967; x=1698139767;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Y8g2g7raXC6KSNLGw7ZLxZ1tqI+faJNv/2CAMfuJSXs=;
 b=fFeNiuQhb2+LksI7G7ZHfdmzhdv9VA5lr61vBQECuH7iicX6Lv5IslzwWDvjA37+wn
 lyqDfMDGR+MPIc6kIrvUXlw0HoLm6L6VtR8Ot1ky3bc7XZCE5+hcEzjLl23WER/5uszd
 wxhETTa5uoc9ISyO3+6SBc/2OJalYn7Ys0gb5KxR3TxuDNOVLk3BiJvFVaOgMfd9Edpg
 HDNh103eo9EWdJW3HVVAYa+YUd9jlfCaQH1fRPiB5wCgvXyOsEaUnD+/bftGdGAzv4ii
 ZrADBrYmwmaQmuLdS2AAFg1UXJmxvQpojsUTPEvzNNl7OchOFotmHFvrPh6HQCEtp1Ij
 eEHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697534967; x=1698139767;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Y8g2g7raXC6KSNLGw7ZLxZ1tqI+faJNv/2CAMfuJSXs=;
 b=Rwn63c/Smka03WpoBzwMVmF7EEkygS+DzAfFoVTyU3UzsFMHeyVQiy/BDmZlLhOapf
 IbugOTT1VG/m0byFRRgTNvQk6KPrxplj1wtrImScYQrIXB+bcdNS1lSXxQjALMpA5DU9
 lOSk2T1byEVME/VcfdoZ5lD71mOMULkiB6i68PH6MnvPAvM3mXM32HBXjtN/7gipNVub
 BvOUyhLs41DbLexhIeMDZrB1R4GOpGWeOsHk61ciEVjTSEQn2OwYm+fut+4ZDY1Tx8D6
 8lfF7fZ6IARhnKjExu5CnXhM7y0BZ3KLi9VHOwQRKgDuyayIOm1gzWP8wjitvbaeOuHU
 J1pQ==
X-Gm-Message-State: AOJu0YwhWllxRiJI7F1iZsu98PcoYTWY3WbdIwTFNe/eDc1bUWypA5iw
 HrTpBZGyZCLepq0oZv6QDUNNlg==
X-Google-Smtp-Source: AGHT+IGSmLBaD2wKKHZq/x/+3etoHYcooCSNy25pi3pMScSaIE9OiBl3EKPIm9+JWEN8/QOBiLaVUg==
X-Received: by 2002:adf:f486:0:b0:32d:be57:795f with SMTP id
 l6-20020adff486000000b0032dbe57795fmr1484881wro.6.1697534967111; 
 Tue, 17 Oct 2023 02:29:27 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 e10-20020a5d594a000000b0032db430fb9bsm1233701wri.68.2023.10.17.02.29.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:29:26 -0700 (PDT)
Message-ID: <80dca841-6cfa-e176-431a-9800183ce986@blackwall.org>
Date: Tue, 17 Oct 2023 12:29:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-12-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-12-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 11/13] rtnetlink: Add MDB get support
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
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 10/16/23 16:12, Ido Schimmel wrote:
> Now that both the bridge and VXLAN drivers implement the MDB get net
> device operation, expose the functionality to user space by registering
> a handler for RTM_GETMDB messages. Derive the net device from the
> ifindex specified in the ancillary header and invoke its MDB get NDO.
> 
> Note that unlike other get handlers, the allocation of the skb
> containing the response is not performed in the common rtnetlink code as
> the size is variable and needs to be determined by the respective
> driver.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   net/core/rtnetlink.c | 89 +++++++++++++++++++++++++++++++++++++++++++-
>   1 file changed, 88 insertions(+), 1 deletion(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


