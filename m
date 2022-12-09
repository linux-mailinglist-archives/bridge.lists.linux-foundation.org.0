Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FB6647E7F
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 08:27:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7E7841524;
	Fri,  9 Dec 2022 07:27:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7E7841524
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=wporLZhg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IBi_KtuZ1Qqr; Fri,  9 Dec 2022 07:27:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id F2F3A41714;
	Fri,  9 Dec 2022 07:27:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2F3A41714
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 951B5C007C;
	Fri,  9 Dec 2022 07:27:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 634CDC002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:27:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 45D1E60B46
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:27:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45D1E60B46
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=wporLZhg
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U4-zS2vuJDJj for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 07:27:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A4AE60AAE
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A4AE60AAE
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:27:05 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id h7so4307277wrs.6
 for <bridge@lists.linux-foundation.org>; Thu, 08 Dec 2022 23:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=KSkxp9G2CF6S5rppPANiUey7SnfmSrWPD2ZRfSXSe9c=;
 b=wporLZhgoBS3JLFLF2lvV7ZmfJIVRMqul3s5HKG80kGORLsusrqamCFfWUi4gk//e7
 6sAo17PByF0+HJALTxuNovlahMVA+t+gx8r76/bqrEuPYySgzz5+6x0ZLVuFOJwnQZS+
 8Qejh6dBMku5x155Tx0Eosw3KFuIrnqjRcHX9LS62EZWDeM+8IU6q6plOSXvbtHJ+rIM
 UNmYQe87Nkz4Jn+LeUnB7vbjVb85ApvduXTFEpXWjifr+wxImEHBxVwLAQnVhv0ufpHS
 GpXBBcl6fu3s5B0D8W0ThrJH2hL3UZVtVwbJtqMuVKj2ukipe3nr9dyDqOIkbedwdL0t
 dfqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KSkxp9G2CF6S5rppPANiUey7SnfmSrWPD2ZRfSXSe9c=;
 b=RAvMeu+Ar9YLCdSnXKGXeMGMaRCttMX7IzzfKbnxz9bIDXV95dQ69iXL3spn6GPaLy
 Yd16x3wx6tfxxBbZs1nXTvlPNnBi/XvTcWQiubv+2BBu/2976puGPU8SAA70pcRCgf/Y
 n3qfhnVC+ECZytUT5B6TJ43FL+txFIR3DKwYlCzFQz2/TDSY/YMeLufjeIkVFR0niUZK
 nXs//RCfaO8KaHBU1iAhDhJgoU+W+Hj8fYu5uMpBgjd0JM+EGWdcCe9qvkrpIKLf1pDf
 QkE9HUP8znfni1ypLYlGLEzKYOxJ3ioaJPmncK4eqodUkvuGFqZz2o6/5w+rc5eI1XS2
 WDoA==
X-Gm-Message-State: ANoB5pl21VkRboqt6ymwFkxoJ2FnCJl4f5BZfj3TeL7m41JqUNwZ3fX9
 CPoGL1GLMWAlzFv2/08w+mFHpg==
X-Google-Smtp-Source: AA0mqf55D9ni2lDtVr983PKyKzMmoHwLgw9rWJmy5wAILZnGl3Y4d2jpeaFjm06+4eyZL6iP/076Ow==
X-Received: by 2002:a05:6000:1c1d:b0:236:8cca:d3c9 with SMTP id
 ba29-20020a0560001c1d00b002368ccad3c9mr3415610wrb.53.1670570823189; 
 Thu, 08 Dec 2022 23:27:03 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 j18-20020a5d5652000000b002427bfd17b6sm765297wrw.63.2022.12.08.23.27.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Dec 2022 23:27:02 -0800 (PST)
Message-ID: <6f71f4e4-9224-efa0-dbe2-e1b35b5526e2@blackwall.org>
Date: Fri, 9 Dec 2022 09:27:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-2-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-2-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 01/14] bridge: mcast: Do not derive
 entry type from its filter mode
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
> Currently, the filter mode (i.e., INCLUDE / EXCLUDE) of MDB entries
> cannot be set from user space. Instead, it is set by the kernel
> according to the entry type: (*, G) entries are treated as EXCLUDE and
> (S, G) entries are treated as INCLUDE. This allows the kernel to derive
> the entry type from its filter mode.
> 
> Subsequent patches will allow user space to set the filter mode of (*,
> G) entries, making the current assumption incorrect.
> 
> As a preparation, remove the current assumption and instead determine
> the entry type from its key, which is a more direct way.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  net/bridge/br_mdb.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
> index ae7d93c08880..2b6921dbdc02 100644
> --- a/net/bridge/br_mdb.c
> +++ b/net/bridge/br_mdb.c
> @@ -857,17 +857,14 @@ static int br_mdb_add_group(const struct br_mdb_config *cfg,
>  	 * added to it for proper replication
>  	 */
>  	if (br_multicast_should_handle_mode(brmctx, group.proto)) {
> -		switch (filter_mode) {
> -		case MCAST_EXCLUDE:
> -			br_multicast_star_g_handle_mode(p, MCAST_EXCLUDE);
> -			break;
> -		case MCAST_INCLUDE:
> +		if (br_multicast_is_star_g(&group)) {
> +			br_multicast_star_g_handle_mode(p, filter_mode);
> +		} else {
>  			star_group = p->key.addr;
>  			memset(&star_group.src, 0, sizeof(star_group.src));
>  			star_mp = br_mdb_ip_get(br, &star_group);
>  			if (star_mp)
>  				br_multicast_sg_add_exclude_ports(star_mp, p);
> -			break;
>  		}
>  	}
>  

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

