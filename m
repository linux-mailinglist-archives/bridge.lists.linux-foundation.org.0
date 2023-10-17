Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8047CBE6F
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:06:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDB6260F85;
	Tue, 17 Oct 2023 09:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDB6260F85
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=AIvJhcEU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 11Un7-2Sotc6; Tue, 17 Oct 2023 09:06:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id A364160F40;
	Tue, 17 Oct 2023 09:06:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A364160F40
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4163CC0DD3;
	Tue, 17 Oct 2023 09:06:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7D9BBC0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 57F3B81248
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:06:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57F3B81248
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=AIvJhcEU
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KL652F9U941O for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:06:10 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 31E6981000
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:06:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31E6981000
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-405361bba99so49267185e9.2
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697533568; x=1698138368;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qA7yQpTMUNBHSQCogbhz+FKzV5+XqR4AHXCW8qRlHDA=;
 b=AIvJhcEUFGQ/PkxlTHH9mnOTuXPOehCkeJ7doRiBhjw9ZEr9UTg54kUGsPjVpzd4i7
 4o3yXlJVZMU/ZxudFEvT7yXDW/wk++Jcb3KmhTj0a+FLpPJXbtpFkFnBVFGgP2bajmTI
 Xy3pS+yzOEfsKlkjAWFiJSN9wC6D0FEGm72dF0KKZQRBrde4DZ/Ttd1kqBRSr2tHdBmt
 D6N1sQdv+PTmYs7bOK1rm+bpzf/FSj+COR7BVdmqsEor2LFHiqFDogslXY5YVQDBGuc3
 j26YWuaAE7mshkEgQAVzBpomljDgR/QSaalPT6iZBVPt+mlofRNuFX0pahjKty8YQec4
 FgFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697533568; x=1698138368;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qA7yQpTMUNBHSQCogbhz+FKzV5+XqR4AHXCW8qRlHDA=;
 b=JEHHh+nJ5Oz8tHH1lFMH8xVjQSB02Vd4vsHW4+QW6E8YKLcdTdsh0gACSU9VopuQWF
 ChIJPHhjUMgp4uaEpeyGiLz+RG7sKgW9YXSCuoTMJWNUcTLwUXuAqmCncMxtKlKKVuXj
 XV0SroRFtAU07fgeTaqqglHqtakz6fOXWazVJ9J5iwfhHRi7O4Olo3jJQFISDiQOmzPL
 DMXunpfrYWGrEUZsdDcAmMqWWUyR9tp6yDeJn6OCIIEvINkUsHlmXwf9Gdu3Q8ZWBdC4
 Z2zaOv2hXV62ZEzxalxZErZ+3Edy3dsQvW8y4ixjEvcWu1jF1eNhEUk//EmjjQwsk+YD
 Jxcw==
X-Gm-Message-State: AOJu0Yw6V9CsiFcinZdoDZTcbgPiFN3wd6raJgxvc1djb9uafYQ+osCo
 Z1ufL8ah9nf8myE+J6cY4k8twQ==
X-Google-Smtp-Source: AGHT+IGmIebJbkbjOBEPa5EIHmOhIa+mOXQR5GJ8J4ulCwPgttY9t9PBuAEc6T1teTGiWBAjWm8CaA==
X-Received: by 2002:adf:ffc3:0:b0:32d:a469:a1b with SMTP id
 x3-20020adfffc3000000b0032da4690a1bmr1589243wrs.62.1697533568192; 
 Tue, 17 Oct 2023 02:06:08 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 j17-20020adfb311000000b0032d9382e6e0sm1223085wrd.45.2023.10.17.02.06.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:06:07 -0700 (PDT)
Message-ID: <7549f41b-2a31-238a-655e-4de2f01d1ea4@blackwall.org>
Date: Tue, 17 Oct 2023 12:06:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-5-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-5-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 04/13] bridge: mcast: Rename MDB entry
 get function
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
> The current name is going to conflict with the upcoming net device
> operation for the MDB get operation.
> 
> Rename the function to br_mdb_entry_skb_get(). No functional changes
> intended.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   net/bridge/br_device.c    |  2 +-
>   net/bridge/br_input.c     |  2 +-
>   net/bridge/br_multicast.c |  5 +++--
>   net/bridge/br_private.h   | 10 ++++++----
>   4 files changed, 11 insertions(+), 8 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


