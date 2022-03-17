Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 228EA4DC7FD
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 14:54:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AAFA24023F;
	Thu, 17 Mar 2022 13:54:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9UrL1ec-VsDU; Thu, 17 Mar 2022 13:54:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 5978940234;
	Thu, 17 Mar 2022 13:54:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0746FC0082;
	Thu, 17 Mar 2022 13:54:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C16FCC000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 13:54:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B07A14023F
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 13:54:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cn3YvKkFsYY5 for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 13:54:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C98CE40234
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 13:54:49 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id hw13so10764489ejc.9
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 06:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Auj42wKcECcnklt6KoxYruKINeN/YRt0HTEgWQUvSbk=;
 b=trKaLQcY0Yt+MaFoeQX72QMgkuS5ppCOlNREaVS7jA73fXvLoyc7ULKKjY4nZXSvpb
 PAWHAjW2yBatHxPF21LM40sYwNnc0oT01X7OtZhPA65Blrr4xDZrt3YVuLS6rl3lkgGG
 qGdKrKHFuXoeQQ9/dhxBX4+2e5JzFER+NnKiU5FFpm/LZucICodXrX4AZJNcOwQFs4by
 1HZEjYX5Ev2wrsD8Z6/cy8LNMwZrr5UseaxFnzXb3tEajr3lPLnCMXJwpnSk3XJxpJto
 02FW+5u8/k7oc1hck+7sNYGTQV+G61KbOnMiUm6QlFH2vykPa7I8ht0+WeQS09VSChWa
 5omQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Auj42wKcECcnklt6KoxYruKINeN/YRt0HTEgWQUvSbk=;
 b=A5h1jU62V715Eu/RdDLDP0H+MqXlDXkhC6Pb5Uk17uGaQx82c9orHXFyuSrJQKg9a2
 hHcsUst9pIAyNinzPcKS7/A1IWZgWRFQan/EN75/fQNdKpUnhjmQZjao4VQf/rlP5I8h
 H7iuLaoLittBPcGG9vUQJrIRjLbh2NPP2db2WjcfTvUamralnXZn07uvvLhSleImbsJv
 gxYbmuaZZOtLpKQMd8Jc3ABZUutF5nd6jv/8uZrj+Ywv486c1zOViOqeKLgXwLEbqvMJ
 P4vA+HaX0OcL1KudWl+i0FjGtAN2TVF+S8hWPYuEIADjg06LwAfEN63LVUw77AqPNIOz
 pgXw==
X-Gm-Message-State: AOAM533JcxvlQqk17OYmTNkgvL5dU80V8UvCOMKNfgnu+XWsq+yI0q+U
 zQL66M8mwaJ4skZ2MC65VN/WIw==
X-Google-Smtp-Source: ABdhPJy3LJaMR48aHk4Bgx3rzdJbmiM4BhtwzVOo5DCk6QRrRA0jhiASRLbf5YA+rewzYYnz+t/WAQ==
X-Received: by 2002:a17:907:c05:b0:6db:f118:8834 with SMTP id
 ga5-20020a1709070c0500b006dbf1188834mr4594601ejc.536.1647525286282; 
 Thu, 17 Mar 2022 06:54:46 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 t19-20020a1709060c5300b006d582121f99sm2376864ejf.36.2022.03.17.06.54.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Mar 2022 06:54:45 -0700 (PDT)
Message-ID: <24add056-e0d2-bf4b-9d56-04289bedbf15@blackwall.org>
Date: Thu, 17 Mar 2022 15:54:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@idosch.org>, Hans Schultz <schultz.hans@gmail.com>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-2-schultz.hans+netdev@gmail.com>
 <YjM7Iwx4MDdGEHFA@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <YjM7Iwx4MDdGEHFA@shredder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

On 17/03/2022 15:44, Ido Schimmel wrote:
> On Thu, Mar 17, 2022 at 10:38:59AM +0100, Hans Schultz wrote:
>> Add an intermediate state for clients behind a locked port to allow for
>> possible opening of the port for said clients. This feature corresponds
>> to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
>> latter defined by Cisco.
>> Only the kernel can set this FDB entry flag, while userspace can read
>> the flag and remove it by deleting the FDB entry.
> 
> Can you explain where this flag is rejected by the kernel?
> 
> Nik, it seems the bridge ignores 'NDA_FLAGS_EXT', but I think that for
> new flags we should do a better job and reject unsupported
> configurations. WDYT?
> 

Definitely, I agree.

> The neighbour code will correctly reject the new flag due to
> 'NTF_EXT_MASK'.


