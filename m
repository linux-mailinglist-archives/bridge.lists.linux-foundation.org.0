Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A33D24FB6E3
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 11:05:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53685400E4;
	Mon, 11 Apr 2022 09:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A6Ya0RSb0LoJ; Mon, 11 Apr 2022 09:05:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id BC7F240220;
	Mon, 11 Apr 2022 09:05:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6A581C0082;
	Mon, 11 Apr 2022 09:05:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 34567C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 09:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21E4241607
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 09:05:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eLXSifojy4pR for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 09:05:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18D02415FB
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 09:05:51 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id v15so7430752edb.12
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 02:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=v4z7ciQz0pMAhP2xoz2akjfMI+qQ/Mok6WikmTBqsYw=;
 b=tExJp+KgFpJ4L78z/xw5eqoIi0XRxRVIvDLn5hd6ER/6T0J9opCve52t/72GZK1QEs
 oMNTPbuOztVr9urcUkXJ2jwDFtD9Npi9NyjTezw4nXQvLHLZHafc9/Law32cc9yzt9kK
 nOHUQBLkhaq8dNPs4Qx73mDAtPZJwUvS7/zf+/EP+vhZ4WrqxADruiqxUyOtNk3DcooQ
 ayi0IziFBArzr866houQ8yQU9ihW2YQCQH3Uo/2gWW44DXN5g6xEKzAtu9cPoYYjzK9+
 kswhfTkuBRTOa1gy9V3Ce2Q8bClVQ+Q/df/8X8sDISMWP05PYBLR7rhchelPT0lpned6
 f+wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=v4z7ciQz0pMAhP2xoz2akjfMI+qQ/Mok6WikmTBqsYw=;
 b=Dxbca3Iv7vsfypIzNBDiUiaYfjAXOIMyY/MVXUKtIwChernZsHx1pVgJlxk00BhPdW
 Oj5C5cT6/4QWHUGQfwYNKm4BFESP0Ox3GZ9u5zIszF0vboP3fH1afaU5QjLj/7DGVd3o
 QkICSyVXnv0YvQUyjR+Scap77O+Ff8CLRzqqi6YbqjrjB1stPD2gP1rsnz8bQddJZWx3
 VDlLFART8ZOJ/EgzTueGA04mibDiLCMCvDooukVWoTu6PtCY+A+0YhnYwJZH3r5/5s3v
 cPjuQvorUnokp4fJXT4XzXvVt4S0t+YeLyx0E+CJlmHmaS/JzIu2XXB4AdOTFW3QI3Qo
 XtBw==
X-Gm-Message-State: AOAM533W1b4bt7gY69rsDrR01kT150ouCIq/Zx9sPu0+CO9UWh/C8WBR
 ln7F1G+PxVF9rLi65DfDjzNfUQ==
X-Google-Smtp-Source: ABdhPJzL62lxf1dH7Rlxl3m77KsOIvn0rPi/DP1y2PaxTFSyqas+xdQpMvWvwAQdRizF+JK1MD41wQ==
X-Received: by 2002:a05:6402:438b:b0:41b:5212:1de1 with SMTP id
 o11-20020a056402438b00b0041b52121de1mr32849288edc.384.1649667950273; 
 Mon, 11 Apr 2022 02:05:50 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 t12-20020a1709067c0c00b006e86db76851sm2768598ejo.193.2022.04.11.02.05.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Apr 2022 02:05:49 -0700 (PDT)
Message-ID: <61e817f3-8d06-b190-6023-1b89e05e4482@blackwall.org>
Date: Mon, 11 Apr 2022 12:05:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ido Schimmel <idosch@idosch.org>
References: <20220409105857.803667-1-razor@blackwall.org>
 <20220409105857.803667-4-razor@blackwall.org> <YlPpqKFeAs5oCHGD@shredder>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <YlPpqKFeAs5oCHGD@shredder>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next 3/6] net: bridge: fdb: add new nl
 attribute-based flush call
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

On 11/04/2022 11:41, Ido Schimmel wrote:
> On Sat, Apr 09, 2022 at 01:58:54PM +0300, Nikolay Aleksandrov wrote:
>> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bridge.h
>> index 221a4256808f..2f3799cf14b2 100644
>> --- a/include/uapi/linux/if_bridge.h
>> +++ b/include/uapi/linux/if_bridge.h
>> @@ -807,7 +807,15 @@ enum {
>>  /* embedded in IFLA_BRIDGE_FLUSH */
>>  enum {
>>  	BRIDGE_FLUSH_UNSPEC,
>> +	BRIDGE_FLUSH_FDB,
>>  	__BRIDGE_FLUSH_MAX
>>  };
>>  #define BRIDGE_FLUSH_MAX (__BRIDGE_FLUSH_MAX - 1)
>> +
>> +/* embedded in BRIDGE_FLUSH_FDB */
>> +enum {
>> +	FDB_FLUSH_UNSPEC,
> 
> BTW, is there a reason this is not called FLUSH_FDB_UNSPEC given it's
> embedded in BRIDGE_FLUSH_FDB, which is embedded in IFLA_BRIDGE_FLUSH ?
> 
> Regardless, in the cover letter you have '[ BRIDGE_FDB_FLUSH ]', which
> is actually BRIDGE_FLUSH_FDB. I only noticed it because the code didn't
> match what I had in my notebook, which I copied from the cover letter :)
> 

Oops, that's a mismatch between an older version of the set and this one. :)

>> +	__FDB_FLUSH_MAX
>> +};
>> +#define FDB_FLUSH_MAX (__FDB_FLUSH_MAX - 1)
>>  #endif /* _UAPI_LINUX_IF_BRIDGE_H */

