Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1A7647EFF
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 09:10:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8599181971;
	Fri,  9 Dec 2022 08:10:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8599181971
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=1VWPNBAA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8TKCJ4DkD6mh; Fri,  9 Dec 2022 08:10:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 07D1181991;
	Fri,  9 Dec 2022 08:10:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07D1181991
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8C24BC007C;
	Fri,  9 Dec 2022 08:10:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DED68C002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 08:09:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB1B04021C
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 08:09:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AB1B04021C
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=1VWPNBAA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zydex_DGloKS for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 08:09:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA1774014A
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CA1774014A
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 08:09:58 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id bx10so4423204wrb.0
 for <bridge@lists.linux-foundation.org>; Fri, 09 Dec 2022 00:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=YCP7yxwum67RO4mEmEfrq5efv1zflTsiTTb912/2Cfo=;
 b=1VWPNBAAOBd8w1VrQChHA0FhUz/nP/HQtm/dEuGg4NC0jn5kKCgyqPgAwrjvF5de2d
 1P/tjbrdPGHukbd3bFmy2oQmeh8E9Si4WPMhcICddwdyrq/aJ1kGgXOXNUhbzd6kjsWx
 AUnWRkN1xIn6Hy2Wxf63rlc67d3RjlZo4b5O5te2FCCUKuiaL2m+VChM4GPQe5YKWjla
 huxFM4+WuUDNNz2FA8YrZnnM7hIzzZEgYRONYGF7iPyha0bIFBwk5r4x8BPW46nvUkYg
 Yy/lUAwCFZS8amN+HSkMVa/afBXp2HM3II3ji46a2/VLL+bIMiYCNa5wzoOwqTKdFW6X
 08PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=YCP7yxwum67RO4mEmEfrq5efv1zflTsiTTb912/2Cfo=;
 b=ZIEqe7EWeJO36AnHS3tOWv74HulXZ9rVwD+Ex7/Ym+9fSMXIyLwlxSFVA6OvQXyjES
 AcpBYZWUIEFdEOh5KucNvde2zpbZPSRWbF/SOAbz8pftE9+d+jS0vSSmwzbxYJ/Y6tLN
 CWlHkqEX3FAvskeLebXjnPQdhJQ+aGEOcj5IJw6uiuiA6rHQy0VoK91mnpPMahgzntPv
 ETQRK20ZhFm2Jy9JESjvLjGUsd2Q2Pp7TqZsHqm/Z+KEyNsrV61U03ceuqajL8HaI48g
 YWDUd1RryYilX77GV7LKALfbQN1F0NABuNH9e9YQ7UYMEbm3GF5+osmnsSDQhaMdwPtE
 rcNg==
X-Gm-Message-State: ANoB5pmnprCH+0T+JMOvvBQ6JFnlaluJlTGZ6Z9RnoRMcX38uoGj6z3L
 6KHrO/OPPArvrgxLCdkMK9eTOriODg6pLiRYjSk=
X-Google-Smtp-Source: AA0mqf69fghliXej6rg2YSUODN2Wz3GNtWmZ+vswMD6SZ/B4Vq907+sdJ7mgNp7y5Ik+O09d19SZiQ==
X-Received: by 2002:adf:e64c:0:b0:242:2445:4a42 with SMTP id
 b12-20020adfe64c000000b0024224454a42mr3089985wrn.9.1670573396936; 
 Fri, 09 Dec 2022 00:09:56 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 m13-20020a056000180d00b002366f9bd717sm897086wrh.45.2022.12.09.00.09.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 09 Dec 2022 00:09:56 -0800 (PST)
Message-ID: <23a7a5b5-1fba-b1e0-cbe1-8b1e3b9dbab9@blackwall.org>
Date: Fri, 9 Dec 2022 10:09:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-15-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-15-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 14/14] selftests: forwarding: Add
	bridge MDB test
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

On 08/12/2022 17:28, Ido Schimmel wrote:
> Add a selftests that includes the following test cases:
> 
> 1. Configuration tests. Both valid and invalid configurations are
>    tested across all entry types (e.g., L2, IPv4).
> 
> 2. Forwarding tests. Both host and port group entries are tested across
>    all entry types.
> 
> 3. Interaction between user installed MDB entries and IGMP / MLD control
>    packets.
> 
> Example output:
> 
> INFO: # Host entries configuration tests
> TEST: Common host entries configuration tests (IPv4)                [ OK ]
> TEST: Common host entries configuration tests (IPv6)                [ OK ]
> TEST: Common host entries configuration tests (L2)                  [ OK ]
> 
> INFO: # Port group entries configuration tests - (*, G)
> TEST: Common port group entries configuration tests (IPv4 (*, G))   [ OK ]
> TEST: Common port group entries configuration tests (IPv6 (*, G))   [ OK ]
> TEST: IPv4 (*, G) port group entries configuration tests            [ OK ]
> TEST: IPv6 (*, G) port group entries configuration tests            [ OK ]
> 
> INFO: # Port group entries configuration tests - (S, G)
> TEST: Common port group entries configuration tests (IPv4 (S, G))   [ OK ]
> TEST: Common port group entries configuration tests (IPv6 (S, G))   [ OK ]
> TEST: IPv4 (S, G) port group entries configuration tests            [ OK ]
> TEST: IPv6 (S, G) port group entries configuration tests            [ OK ]
> 
> INFO: # Port group entries configuration tests - L2
> TEST: Common port group entries configuration tests (L2 (*, G))     [ OK ]
> TEST: L2 (*, G) port group entries configuration tests              [ OK ]
> 
> INFO: # Forwarding tests
> TEST: IPv4 host entries forwarding tests                            [ OK ]
> TEST: IPv6 host entries forwarding tests                            [ OK ]
> TEST: L2 host entries forwarding tests                              [ OK ]
> TEST: IPv4 port group "exclude" entries forwarding tests            [ OK ]
> TEST: IPv6 port group "exclude" entries forwarding tests            [ OK ]
> TEST: IPv4 port group "include" entries forwarding tests            [ OK ]
> TEST: IPv6 port group "include" entries forwarding tests            [ OK ]
> TEST: L2 port entries forwarding tests                              [ OK ]
> 
> INFO: # Control packets tests
> TEST: IGMPv3 MODE_IS_INCLUE tests                                   [ OK ]
> TEST: MLDv2 MODE_IS_INCLUDE tests                                   [ OK ]
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  .../testing/selftests/net/forwarding/Makefile |    1 +
>  .../selftests/net/forwarding/bridge_mdb.sh    | 1164 +++++++++++++++++
>  2 files changed, 1165 insertions(+)
>  create mode 100755 tools/testing/selftests/net/forwarding/bridge_mdb.sh
> 

Nice set of tests!
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


