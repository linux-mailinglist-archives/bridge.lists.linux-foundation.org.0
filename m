Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C664068EE3C
	for <lists.bridge@lfdr.de>; Wed,  8 Feb 2023 12:49:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 616D16105E;
	Wed,  8 Feb 2023 11:49:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 616D16105E
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=sl6rqalK
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ysRCHyjQ0yEr; Wed,  8 Feb 2023 11:49:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id BE72B61059;
	Wed,  8 Feb 2023 11:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE72B61059
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 729EBC007C;
	Wed,  8 Feb 2023 11:49:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 390FEC002B
 for <bridge@lists.linux-foundation.org>; Wed,  8 Feb 2023 11:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 124CB81B3E
 for <bridge@lists.linux-foundation.org>; Wed,  8 Feb 2023 11:49:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 124CB81B3E
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=sl6rqalK
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zHJllS4ceimh for <bridge@lists.linux-foundation.org>;
 Wed,  8 Feb 2023 11:49:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8C6081DE7
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C8C6081DE7
 for <bridge@lists.linux-foundation.org>; Wed,  8 Feb 2023 11:49:09 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id v10so20046113edi.8
 for <bridge@lists.linux-foundation.org>; Wed, 08 Feb 2023 03:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=/SjDO6EqNmi5y7XE3sAL8vvCHxfKdZQcflUbJwAoNdk=;
 b=sl6rqalKTORmeCW3cgfxYFWnfEdrE1Ohxuo91EvA9Kk25SNlDc/wPrTo5+U85ov5I0
 J+odxvOcte2fm31vDYc4IEVPsiPVZVFpPgmmoGBTI5Z8Svfe/J5du2qeKHerKelaMVNa
 lH0hJktWHtD7hMiYsXQyOJQ4cTg6VnzzrJjjZHhg9EDWGBrga8T5gtLcjVJxBAOlODLV
 j/jfmI5j82iJZdsYU1+lIqIIEc/a6HUEZaUIx6gdV+u+FBP1ZQcumDWagY0W9BmXHRpl
 88PO9uP5RRvw2YaRLtXvUXBApCl8RWEj4Swvwyp7nzQoA+Gq9L8k9V5ECdfNPawapsrg
 0jzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/SjDO6EqNmi5y7XE3sAL8vvCHxfKdZQcflUbJwAoNdk=;
 b=1BtsMlBEBPkaNgNLvSDHcZdcBUJuP9r3aPblSox5SVDokiukLCpHdL7q1w+6ulxTX2
 IRrCEBUP5IN6e6sfaKgUabbVX0kceYufiO8/rSNrHOglBb8WMxKR5VugBeFlsfHZap7f
 Zvj/8z68QAKXzOpMHptTcgWwfBMyd0O9W2u3PSZVNbPDdtJ4DtJ5yXv5kg5WfnQVtpUX
 9CCQaKAz1a0APlsSGSBy/MT0HUQ5OB0oHfzIRfyOZHcEi/GyZOK8nYT7yofMdIg6rIYK
 Iz6jou79p+i2Oh7D5WehT07tjt8TC5PNaWz6/yPoH+VViciGF/jJ3WwgzK9hEiKoDd4o
 2SeA==
X-Gm-Message-State: AO0yUKUNAy0nHMbhDpCiKqBPOri0kjhr2l44+Zj97lcoh9gLoggzijJP
 hNXHQUWbsAxIfvUpsKqOuQAhAA==
X-Google-Smtp-Source: AK7set8USNC3aQ1gyxtjT07nJH5xh1j36nmp6Eni3999lVqI6j72LeJJg7AuVYE6YXllxd0EX3+Vaw==
X-Received: by 2002:a50:d741:0:b0:4a2:3d2e:6502 with SMTP id
 i1-20020a50d741000000b004a23d2e6502mr7918896edj.4.1675856947911; 
 Wed, 08 Feb 2023 03:49:07 -0800 (PST)
Received: from [192.168.3.225] ([81.6.34.132])
 by smtp.gmail.com with ESMTPSA id
 r6-20020a056402018600b0049f29a7c0d6sm7775392edv.34.2023.02.08.03.49.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Feb 2023 03:49:07 -0800 (PST)
Message-ID: <77af7d2b-d7f4-4df0-294b-14a17300ef8f@blackwall.org>
Date: Wed, 8 Feb 2023 12:49:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Yang Li <yang.lee@linux.alibaba.com>, davem@davemloft.net
References: <20230208005626.56847-1-yang.lee@linux.alibaba.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230208005626.56847-1-yang.lee@linux.alibaba.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com
Subject: Re: [Bridge] [PATCH -next] net: bridge: clean up one inconsistent
	indenting
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

On 2/8/23 02:56, Yang Li wrote:
> ./net/bridge/br_netlink_tunnel.c:317:4-27: code aligned with following code on line 318
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3977
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>   net/bridge/br_netlink_tunnel.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/bridge/br_netlink_tunnel.c b/net/bridge/br_netlink_tunnel.c
> index 17abf092f7ca..eff949bfdd83 100644
> --- a/net/bridge/br_netlink_tunnel.c
> +++ b/net/bridge/br_netlink_tunnel.c
> @@ -315,7 +315,7 @@ int br_process_vlan_tunnel_info(const struct net_bridge *br,
>   
>   			if (curr_change)
>   				*changed = curr_change;
> -			 __vlan_tunnel_handle_range(p, &v_start, &v_end, v,
> +			__vlan_tunnel_handle_range(p, &v_start, &v_end, v,
>   						    curr_change);
>   		}
>   		if (v_start && v_end)

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

