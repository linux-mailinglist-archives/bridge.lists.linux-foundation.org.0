Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AE12EEC19
	for <lists.bridge@lfdr.de>; Fri,  8 Jan 2021 05:04:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DF8A2000F;
	Fri,  8 Jan 2021 04:04:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jpy2TI98eSiI; Fri,  8 Jan 2021 04:04:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 04CB92042B;
	Fri,  8 Jan 2021 04:04:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D9B5FC1DA7;
	Fri,  8 Jan 2021 04:04:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id A6595C013A
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jan 2021 04:04:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 86F3186663
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jan 2021 04:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F6rAhOsUe8y9 for <bridge@lists.linux-foundation.org>;
 Fri,  8 Jan 2021 04:04:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A732287236
 for <bridge@lists.linux-foundation.org>; Fri,  8 Jan 2021 04:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=yIAE2JvjrEcvgRGTFdqvtdjqYhZLL3+YzzRkNV3NO7s=; b=TD4OnrYAcyOrinAUpDgkqivEnC
 Tjw8sn1KpLn4OwZ6I+xx2M0TxDOxhiNC5VFdCflj0J519FmhYDuAagUw1EtRvtb482Cfb2KQRMdo7
 YrkT5vHkkmGGVmm/sMvnmk4hoqfPQbFkJqEtuxG/XMG1T+X09oNYgccGej1m4HTyMSBooxfbT8Y1a
 QaAlPUWys937eBMtXTenrFQCkvqpqX9YA5HEKe0fh6ye8E1in4Rva/MjOgCMPI1X+MdriUxnOcDd3
 NtPIH9Vyv/vZWyoyvoYHyFc/dsxhNAnk3dKToFsdC9dkicXfLqaaJua/+/sx8ANJZ42heaNaDznMu
 UvLFLiyQ==;
Received: from [2601:1c0:6280:3f0::79df]
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxj0I-00078D-AZ; Fri, 08 Jan 2021 04:03:58 +0000
To: menglong8.dong@gmail.com, roopa@nvidia.com
References: <20210108025332.52480-1-dong.menglong@zte.com.cn>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <295b1d84-a49c-cdaa-e7fa-bbe492aa1496@infradead.org>
Date: Thu, 7 Jan 2021 20:03:49 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20210108025332.52480-1-dong.menglong@zte.com.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Menglong Dong <dong.menglong@zte.com.cn>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 nikolay@nvidia.com, kuba@kernel.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] net/bridge: fix misspellings using
 codespell tool
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

On 1/7/21 6:53 PM, menglong8.dong@gmail.com wrote:
> From: Menglong Dong <dong.menglong@zte.com.cn>
> 
> Some typos are found out by codespell tool:
> 
> $ codespell ./net/bridge/
> ./net/bridge/br_stp.c:604: permanant  ==> permanent
> ./net/bridge/br_stp.c:605: persistance  ==> persistence
> ./net/bridge/br.c:125: underlaying  ==> underlying
> ./net/bridge/br_input.c:43: modue  ==> mode
> ./net/bridge/br_mrp.c:828: Determin  ==> Determine
> ./net/bridge/br_mrp.c:848: Determin  ==> Determine
> ./net/bridge/br_mrp.c:897: Determin  ==> Determine
> 
> Fix typos found by codespell.
> 
> Signed-off-by: Menglong Dong <dong.menglong@zte.com.cn>

LGTM. Thanks.

Acked-by: Randy Dunlap <rdunlap@infradead.org>

> ---
>  net/bridge/br.c       | 2 +-
>  net/bridge/br_input.c | 2 +-
>  net/bridge/br_mrp.c   | 6 +++---
>  net/bridge/br_stp.c   | 4 ++--
>  4 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/net/bridge/br.c b/net/bridge/br.c
> index 1b169f8e7491..ef743f94254d 100644
> --- a/net/bridge/br.c
> +++ b/net/bridge/br.c
> @@ -122,7 +122,7 @@ static int br_device_event(struct notifier_block *unused, unsigned long event, v
>  		break;
>  
>  	case NETDEV_PRE_TYPE_CHANGE:
> -		/* Forbid underlaying device to change its type. */
> +		/* Forbid underlying device to change its type. */
>  		return NOTIFY_BAD;
>  
>  	case NETDEV_RESEND_IGMP:
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index 8ca1f1bc6d12..222285d9dae2 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -40,7 +40,7 @@ static int br_pass_frame_up(struct sk_buff *skb)
>  
>  	vg = br_vlan_group_rcu(br);
>  	/* Bridge is just like any other port.  Make sure the
> -	 * packet is allowed except in promisc modue when someone
> +	 * packet is allowed except in promisc mode when someone
>  	 * may be running packet capture.
>  	 */
>  	if (!(brdev->flags & IFF_PROMISC) &&
> diff --git a/net/bridge/br_mrp.c b/net/bridge/br_mrp.c
> index cec2c4e4561d..fc0a98874bfc 100644
> --- a/net/bridge/br_mrp.c
> +++ b/net/bridge/br_mrp.c
> @@ -825,7 +825,7 @@ int br_mrp_start_in_test(struct net_bridge *br,
>  	return 0;
>  }
>  
> -/* Determin if the frame type is a ring frame */
> +/* Determine if the frame type is a ring frame */
>  static bool br_mrp_ring_frame(struct sk_buff *skb)
>  {
>  	const struct br_mrp_tlv_hdr *hdr;
> @@ -845,7 +845,7 @@ static bool br_mrp_ring_frame(struct sk_buff *skb)
>  	return false;
>  }
>  
> -/* Determin if the frame type is an interconnect frame */
> +/* Determine if the frame type is an interconnect frame */
>  static bool br_mrp_in_frame(struct sk_buff *skb)
>  {
>  	const struct br_mrp_tlv_hdr *hdr;
> @@ -894,7 +894,7 @@ static void br_mrp_mrm_process(struct br_mrp *mrp, struct net_bridge_port *port,
>  		br_mrp_ring_port_open(port->dev, false);
>  }
>  
> -/* Determin if the test hdr has a better priority than the node */
> +/* Determine if the test hdr has a better priority than the node */
>  static bool br_mrp_test_better_than_own(struct br_mrp *mrp,
>  					struct net_bridge *br,
>  					const struct br_mrp_ring_test_hdr *hdr)
> diff --git a/net/bridge/br_stp.c b/net/bridge/br_stp.c
> index 3e88be7aa269..a3a5745660dd 100644
> --- a/net/bridge/br_stp.c
> +++ b/net/bridge/br_stp.c
> @@ -601,8 +601,8 @@ int __set_ageing_time(struct net_device *dev, unsigned long t)
>  /* Set time interval that dynamic forwarding entries live
>   * For pure software bridge, allow values outside the 802.1
>   * standard specification for special cases:
> - *  0 - entry never ages (all permanant)
> - *  1 - entry disappears (no persistance)
> + *  0 - entry never ages (all permanent)
> + *  1 - entry disappears (no persistence)
>   *
>   * Offloaded switch entries maybe more restrictive
>   */
> 


-- 
~Randy
https://people.kernel.org/tglx/notes-about-netiquette
https://www.kernel.org/doc/html/latest/process/submit-checklist.html
